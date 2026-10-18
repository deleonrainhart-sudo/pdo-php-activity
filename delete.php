<?php
// delete.php - demonstrates deleting a record
require 'dbconfig.php';

$stmt = $pdo->prepare("DELETE FROM grocery_items WHERE item_id = :id");

// Delete the item we just inserted (ID 117)
$stmt->execute([':id' => 117]);

// rowCount() tells us how many rows were affected
echo $stmt->rowCount() . " record(s) deleted.";
?>