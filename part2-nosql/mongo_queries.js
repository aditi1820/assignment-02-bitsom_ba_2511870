// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "E001",
    name: "iPhone 14",
    category: "Electronics",
    price: 70000,
    specs: { warranty: "1 year", voltage: "220V" }
  },
  {
    product_id: "C001",
    name: "T-Shirt",
    category: "Clothing",
    price: 1500,
    sizes: ["S", "M", "L", "XL"],
    material: "Cotton"
  },
  {
    product_id: "G001",
    name: "Milk",
    category: "Groceries",
    price: 50,
    expiry_date: "2024-12-30",
    nutrition: { calories: 150, fat: "8g" }
  }
]);

// OP2: find Electronics products with price > 20000
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3: find Groceries expiring before 2025-01-01
db.products.find({ category: "Groceries", expiry_date: { $lt: "2025-01-01" } });

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() on category
db.products.createIndex({ category: 1 });