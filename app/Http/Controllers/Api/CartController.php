<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CartItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CartController extends Controller
{
    public function index(Request $request)
    {
        $cartItems = CartItem::with('product')
            ->where('user_id', $request->user()->id)
            ->get();
        return response()->json($cartItems);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required|exists:products,id',
            'quantity' => 'required|integer|min:1',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $cartItem = CartItem::updateOrCreate(
            [
                'user_id' => $request->user()->id,
                'product_id' => $request->product_id,
            ],
            ['quantity' => $request->quantity]
        );

        return response()->json($cartItem->load('product'), 201);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'quantity' => 'required|integer|min:1',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $cartItem = CartItem::where('user_id', $request->user()->id)
            ->where('id', $id)
            ->firstOrFail();

        $cartItem->update(['quantity' => $request->quantity]);

        return response()->json($cartItem->load('product'));
    }

    public function destroy(Request $request, $id)
    {
        CartItem::where('user_id', $request->user()->id)
            ->where('id', $id)
            ->delete();

        return response()->json(['message' => 'Item removed from cart']);
    }

    public function clear(Request $request)
    {
        CartItem::where('user_id', $request->user()->id)->delete();
        return response()->json(['message' => 'Cart cleared']);
    }
}
