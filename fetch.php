<?php
// fetch.php - demonstrates fetch()
require 'dbconfig.php';

// prepare() builds the query with a placeholder (:id) to keep it safe
$stmt = $pdo->prepare("SELECT * FROM grocery_items WHERE item_id = :id");

// execute() fills in the placeholder with a real value
$stmt->execute([':id' => 1]);

// fetch() gets just ONE row
$item = $stmt->fetch();

echo "<pre>";
print_r($item);
echo "</pre>";
?>