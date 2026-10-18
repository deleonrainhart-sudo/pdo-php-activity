<?php
// table.php - shows the query result in an HTML table
require 'dbconfig.php';

// Get all items, sorted by category then name
$stmt = $pdo->query("SELECT * FROM grocery_items ORDER BY category, item_name");
$rows = $stmt->fetchAll();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Indonesian Grocery Items</title>
</head>
<body>
    <h2>Indonesian Grocery Items</h2>
    <table border="1" cellpadding="6" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>Item</th>
            <th>Brand</th>
            <th>Category</th>
            <th>Price (IDR)</th>
            <th>Stock</th>
            <th>Expiry</th>
        </tr>

        <?php foreach ($rows as $row): ?>
        <!-- This part repeats once for every row from the database -->
        <tr>
            <td><?= $row['item_id'] ?></td>
            <td><?= htmlspecialchars($row['item_name']) ?></td>
            <td><?= htmlspecialchars($row['brand_name']) ?></td>
            <td><?= htmlspecialchars($row['category']) ?></td>
            <td><?= number_format($row['price'], 2) ?></td>
            <td><?= $row['stock_quantity'] ?></td>
            <td><?= $row['expiry_date'] ?></td>
        </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>