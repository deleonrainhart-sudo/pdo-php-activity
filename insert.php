<?php
// insert.php - demonstrates inserting a new record
require 'dbconfig.php';

// The SQL uses placeholders (:name, :brand...) instead of raw values.
// This prevents SQL injection.
$sql = "INSERT INTO grocery_items
        (item_name, brand_name, category, price, stock_quantity, expiry_date)
        VALUES (:name, :brand, :category, :price, :qty, :expiry)";

$stmt = $pdo->prepare($sql);

// execute() replaces each placeholder with a real value
$stmt->execute([
    ':name'     => 'Teh Kotak Jasmine 200ml',
    ':brand'    => 'Ultra Teh Kotak',
    ':category' => 'Beverages',
    ':price'    => 4500.00,
    ':qty'      => 100,
    ':expiry'   => '2027-06-30'
]);

// lastInsertId() returns the auto-generated item_id of the new row
echo "Record inserted! New item ID: " . $pdo->lastInsertId();
?>