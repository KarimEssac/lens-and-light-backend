<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\PromoCode;

class PromoCodeSeeder extends Seeder
{
    public function run(): void
    {
        $promoCodes = [
            [
                'code' => 'WELCOME10',
                'discount' => 10,
                'type' => 'percentage',
                'description' => '10% off your first order',
                'active' => true,
            ],
            [
                'code' => 'SAVE50',
                'discount' => 50,
                'type' => 'fixed',
                'description' => '$50 off orders over $500',
                'min_purchase' => 500,
                'active' => true,
            ],
            [
                'code' => 'SUMMER20',
                'discount' => 20,
                'type' => 'percentage',
                'description' => '20% off summer sale',
                'active' => true,
            ],
            [
                'code' => 'FREESHIP',
                'discount' => 0,
                'type' => 'fixed',
                'description' => 'Free shipping on all orders',
                'active' => true,
            ],
        ];

        foreach ($promoCodes as $promoCode) {
            PromoCode::create($promoCode);
        }
    }
}
