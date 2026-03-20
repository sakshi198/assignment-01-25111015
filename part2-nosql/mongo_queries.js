[
  {
    "product_id": "E001",
    "name": "Smartphone",
    "category": "Electronics",
    "price": 30000,
    "brand": "Samsung",
    "specs": {
      "warranty_years": 1,
      "voltage": "220V",
      "battery": "5000mAh"
    },
    "features": ["5G", "AMOLED Display", "Fast Charging"]
  },
  {
    "product_id": "C001",
    "name": "Men's Jacket",
    "category": "Clothing",
    "price": 2500,
    "brand": "Zara",
    "size": ["S", "M", "L", "XL"],
    "material": "Leather",
    "colors": ["Black", "Brown"]
  },
  {
    "product_id": "G001",
    "name": "Milk",
    "category": "Groceries",
    "price": 60,
    "brand": "Amul",
    "expiry_date": "2024-12-30",
    "nutritional_info": {
      "calories": 150,
      "protein": "8g",
      "fat": "5g"
    },
    "storage": "Keep Refrigerated"
  }
]

// OP2:
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3:
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4:
db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);

// OP5:
db.products.createIndex({ category: 1 });

// This index improves query performance when filtering products by category.