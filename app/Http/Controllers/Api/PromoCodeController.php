<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\PromoCode;
use Illuminate\Http\Request;

class PromoCodeController extends Controller
{
    public function validateCode(Request $request)
    {
        $promoCode = PromoCode::where('code', $request->code)
            ->where('active', true)
            ->first();

        if (!$promoCode) {
            return response()->json(['message' => 'Invalid promo code'], 404);
        }

        if ($promoCode->min_purchase && $request->subtotal < $promoCode->min_purchase) {
            return response()->json([
                'message' => 'Minimum purchase amount not met'
            ], 400);
        }

        return response()->json($promoCode);
    }
}
