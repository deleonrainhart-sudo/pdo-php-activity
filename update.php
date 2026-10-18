<?php
// update.php - demonstrates updating a record
require 'dbconfig.php';

$stmt = $pdo->prepare("UPDATE grocery_items
                       SET price = :price, stock_quantity = :qty
                       WHERE item_id = :id");

// Change the price and stock of item 1 (Indomie Mi Goreng)
$stmt->execute([
    ':price' => 3800.00,
    ':qty'   => 300,
    ':id'    => 1
]);

echo $stmt->rowCount() . " record(s) updated.";
?>