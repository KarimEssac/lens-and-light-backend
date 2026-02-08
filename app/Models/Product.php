<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'brand', 'price', 'original_price', 'rating', 'review_count',
        'image', 'category_id', 'description', 'in_stock', 'quantity', 'sku',
        'badge', 'images', 'specifications', 'features'
    ];

    protected $casts = [
        'images' => 'array',
        'specifications' => 'array',
        'features' => 'array',
        'in_stock' => 'boolean',
        'price' => 'decimal:2',
        'original_price' => 'decimal:2',
        'rating' => 'decimal:1',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
