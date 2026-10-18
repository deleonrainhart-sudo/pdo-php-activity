<?php
// fetchall.php - demonstrates fetchAll()
require 'dbconfig.php';   // load the database connection

// Run the SQL query
$stmt = $pdo->query("SELECT * FROM grocery_items");

// fetchAll() gets ALL the rows and returns them as one big array
$items = $stmt->fetchAll();

// <pre> keeps the output neatly formatted in the browser
echo "<pre>";
print_r($items);   // prints the array in a readable way
echo "</pre>";
?>