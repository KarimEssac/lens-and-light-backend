# Lens & Light Backend API Documentation

**Base URL:** `http://127.0.0.1:8000/api`

**CORS Allowed Origin:** `https://lens-and-light-store.vercel.app`

---

## Authentication

All protected routes require Bearer token in header:
```
Authorization: Bearer {token}
```

---

## Public Endpoints

### 1. Register User
**POST** `/register`

**Body:**
```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "password123",
  "password_confirmation": "password123"
}
```

**Response (201):**
```json
{
  "user": {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com"
  },
  "token": "1|abc123..."
}
```

---

### 2. Login User
**POST** `/login`

**Body:**
```json
{
  "email": "john@example.com",
  "password": "password123"
}
```

**Response (200):**
```json
{
  "user": {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com"
  },
  "token": "2|xyz456..."
}
```

---

### 3. Get All Products
**GET** `/products`

**Query Parameters:**
- `category` (optional) - Filter by category slug (cameras, lenses, lighting, accessories)
- `search` (optional) - Search products by name

**Examples:**
- `/products` - All products
- `/products?category=cameras` - Camera products only
- `/products?search=canon` - Products matching "canon"

**Response (200):**
```json
[
  {
    "id": 1,
    "name": "Alpha Z1 Flagship Camera",
    "brand": "Alpha",
    "price": "3899.00",
    "original_price": null,
    "rating": "5.0",
    "review_count": 328,
    "image": "https://...",
    "category_id": 1,
    "description": "Professional full-frame mirrorless camera with 50MP sensor",
    "in_stock": true,
    "quantity": 15,
    "sku": "CAM-ALPHA-Z1-001",
    "badge": "New Arrival",
    "images": ["https://...", "https://..."],
    "specifications": [
      {"label": "Sensor", "value": "50.0MP Full-Frame CMOS"}
    ],
    "features": ["In-body 5-axis stabilization"],
    "category": {
      "id": 1,
      "name": "Cameras",
      "slug": "cameras"
    }
  }
]
```

---

### 4. Get Single Product
**GET** `/products/{id}`

**Response (200):**
```json
{
  "id": 1,
  "name": "Alpha Z1 Flagship Camera",
  "brand": "Alpha",
  "price": "3899.00",
  "category": {
    "id": 1,
    "name": "Cameras",
    "slug": "cameras"
  }
}
```

---

### 5. Get All Categories
**GET** `/categories`

**Response (200):**
```json
[
  {
    "id": 1,
    "name": "Cameras",
    "slug": "cameras",
    "image": "https://...",
    "count": "120+ models"
  }
]
```

---

### 6. Validate Promo Code
**POST** `/promo-codes/validate`

**Body:**
```json
{
  "code": "WELCOME10",
  "subtotal": 500
}
```

**Response (200):**
```json
{
  "id": 1,
  "code": "WELCOME10",
  "discount": "10.00",
  "type": "percentage",
  "description": "10% off your first order",
  "min_purchase": null,
  "active": true
}
```

**Error (404):**
```json
{
  "message": "Invalid promo code"
}
```

**Error (400):**
```json
{
  "message": "Minimum purchase amount not met"
}
```

---

## Protected Endpoints

### 7. Get Current User
**GET** `/user`

**Headers:**
```
Authorization: Bearer {token}
```

**Response (200):**
```json
{
  "id": 1,
  "name": "John Doe",
  "email": "john@example.com"
}
```

---

### 8. Logout User
**POST** `/logout`

**Headers:**
```
Authorization: Bearer {token}
```

**Response (200):**
```json
{
  "message": "Logged out successfully"
}
```

---

### 9. Get Cart Items
**GET** `/cart`

**Headers:**
```
Authorization: Bearer {token}
```

**Response (200):**
```json
[
  {
    "id": 1,
    "user_id": 1,
    "product_id": 1,
    "quantity": 2,
    "product": {
      "id": 1,
      "name": "Alpha Z1 Flagship Camera",
      "price": "3899.00",
      "image": "https://..."
    }
  }
]
```

---

### 10. Add to Cart
**POST** `/cart`

**Headers:**
```
Authorization: Bearer {token}
```

**Body:**
```json
{
  "product_id": 1,
  "quantity": 2
}
```

**Response (201):**
```json
{
  "id": 1,
  "user_id": 1,
  "product_id": 1,
  "quantity": 2,
  "product": {
    "id": 1,
    "name": "Alpha Z1 Flagship Camera",
    "price": "3899.00"
  }
}
```

---

### 11. Update Cart Item
**PUT** `/cart/{id}`

**Headers:**
```
Authorization: Bearer {token}
```

**Body:**
```json
{
  "quantity": 3
}
```

**Response (200):**
```json
{
  "id": 1,
  "quantity": 3,
  "product": {...}
}
```

---

### 12. Remove Cart Item
**DELETE** `/cart/{id}`

**Headers:**
```
Authorization: Bearer {token}
```

**Response (200):**
```json
{
  "message": "Item removed from cart"
}
```

---

### 13. Clear Cart
**DELETE** `/cart`

**Headers:**
```
Authorization: Bearer {token}
```

**Response (200):**
```json
{
  "message": "Cart cleared"
}
```

---

### 14. Get All Orders
**GET** `/orders`

**Headers:**
```
Authorization: Bearer {token}
```

**Response (200):**
```json
[
  {
    "id": 1,
    "user_id": 1,
    "subtotal": "3899.00",
    "tax": "77.98",
    "shipping": "0.00",
    "discount": "0.00",
    "total": "3976.98",
    "promo_code": null,
    "status": "pending",
    "shipping_address": {
      "name": "John Doe",
      "street": "123 Main St",
      "city": "New York",
      "state": "NY",
      "zip": "10001"
    },
    "billing_address": {...},
    "order_items": [
      {
        "id": 1,
        "order_id": 1,
        "product_id": 1,
        "quantity": 1,
        "price": "3899.00",
        "product": {
          "id": 1,
          "name": "Alpha Z1 Flagship Camera"
        }
      }
    ]
  }
]
```

---

### 15. Create Order
**POST** `/orders`

**Headers:**
```
Authorization: Bearer {token}
```

**Body:**
```json
{
  "subtotal": 3899.00,
  "tax": 77.98,
  "shipping": 0.00,
  "discount": 0.00,
  "total": 3976.98,
  "promo_code": "WELCOME10",
  "shipping_address": {
    "name": "John Doe",
    "street": "123 Main St",
    "city": "New York",
    "state": "NY",
    "zip": "10001",
    "country": "USA"
  },
  "billing_address": {
    "name": "John Doe",
    "street": "123 Main St",
    "city": "New York",
    "state": "NY",
    "zip": "10001",
    "country": "USA"
  },
  "items": [
    {
      "product_id": 1,
      "quantity": 1,
      "price": 3899.00
    }
  ]
}
```

**Response (201):**
```json
{
  "id": 1,
  "user_id": 1,
  "subtotal": "3899.00",
  "tax": "77.98",
  "shipping": "0.00",
  "total": "3976.98",
  "status": "pending",
  "order_items": [...]
}
```

---

### 16. Get Single Order
**GET** `/orders/{id}`

**Headers:**
```
Authorization: Bearer {token}
```

**Response (200):**
```json
{
  "id": 1,
  "user_id": 1,
  "total": "3976.98",
  "status": "pending",
  "order_items": [...]
}
```

---

## Error Responses

### Validation Error (422)
```json
{
  "errors": {
    "email": ["The email field is required."],
    "password": ["The password must be at least 8 characters."]
  }
}
```

### Unauthorized (401)
```json
{
  "message": "Unauthenticated."
}
```

### Not Found (404)
```json
{
  "message": "Resource not found"
}
```

### Server Error (500)
```json
{
  "message": "Server error occurred"
}
```

---

## Promo Codes Available

| Code | Type | Discount | Min Purchase |
|------|------|----------|--------------|
| WELCOME10 | percentage | 10% | - |
| SAVE50 | fixed | $50 | $500 |
| SUMMER20 | percentage | 20% | - |
| FREESHIP | fixed | $0 | - |

---

## Database Schema

### Users
- id, name, email, password, timestamps

### Categories
- id, name, slug, image, count, timestamps

### Products
- id, name, brand, price, original_price, rating, review_count, image, category_id, description, in_stock, quantity, sku, badge, images (json), specifications (json), features (json), timestamps

### Cart Items
- id, user_id, product_id, quantity, timestamps

### Orders
- id, user_id, subtotal, tax, shipping, discount, total, promo_code, status, shipping_address (json), billing_address (json), timestamps

### Order Items
- id, order_id, product_id, quantity, price, timestamps

### Promo Codes
- id, code, discount, type, description, min_purchase, active, timestamps
