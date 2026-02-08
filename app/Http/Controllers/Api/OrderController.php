<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\CartItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    public function index(Request $request)
    {
        $orders = Order::with('orderItems.product')
            ->where('user_id', $request->user()->id)
            ->orderBy('created_at', 'desc')
            ->get();
        return response()->json($orders);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'subtotal' => 'required|numeric',
            'tax' => 'required|numeric',
            'shipping' => 'required|numeric',
            'total' => 'required|numeric',
            'shipping_address' => 'required|array',
            'billing_address' => 'required|array',
            'items' => 'required|array',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        DB::beginTransaction();
        try {
            $order = Order::create([
                'user_id' => $request->user()->id,
                'subtotal' => $request->subtotal,
                'tax' => $request->tax,
                'shipping' => $request->shipping,
                'discount' => $request->discount ?? 0,
                'total' => $request->total,
                'promo_code' => $request->promo_code,
                'shipping_address' => $request->shipping_address,
                'billing_address' => $request->billing_address,
                'status' => 'pending',
            ]);

            foreach ($request->items as $item) {
                OrderItem::create([
                    'order_id' => $order->id,
                    'product_id' => $item['product_id'],
                    'quantity' => $item['quantity'],
                    'price' => $item['price'],
                ]);
            }

            CartItem::where('user_id', $request->user()->id)->delete();

            DB::commit();
            return response()->json($order->load('orderItems.product'), 201);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['message' => 'Order creation failed'], 500);
        }
    }

    public function show(Request $request, $id)
    {
        $order = Order::with('orderItems.product')
            ->where('user_id', $request->user()->id)
            ->where('id', $id)
            ->firstOrFail();
        return response()->json($order);
    }
}
