<?php
// dbconfig.php - connects PHP to the MySQL database using PDO

$host = "localhost";    // the server where MySQL runs (your own computer)
$db   = "grocery_db";   // the name of our database
$user = "root";         // default XAMPP username
$pass = "";             // default XAMPP password is empty

try {
    // Create the PDO connection object
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass);

    // Show real errors if something goes wrong
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Return rows as arrays with column names (e.g. $row['brand_name'])
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    // Stop the script and show the error if connecting fails
    die("Connection failed: " . $e->getMessage());
}
?>