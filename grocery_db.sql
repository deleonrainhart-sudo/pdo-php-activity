-- =====================================================
-- PDO METHODS ACTIVITY
-- Name   : De Leon, Rainhart C.
-- Section: UCOS 3-2
-- Country: Indonesia
-- Prices are in Indonesian Rupiah (IDR)
-- =====================================================

CREATE DATABASE IF NOT EXISTS grocery_db;
USE grocery_db;

DROP TABLE IF EXISTS grocery_items;

CREATE TABLE grocery_items (
    item_id        INT AUTO_INCREMENT PRIMARY KEY,
    item_name      VARCHAR(100) NOT NULL,
    brand_name     VARCHAR(100) NOT NULL,
    category       VARCHAR(50),
    price          DECIMAL(10,2),
    stock_quantity INT,
    expiry_date    DATE
);

INSERT INTO grocery_items (item_name, brand_name, category, price, stock_quantity, expiry_date) VALUES
-- Instant Noodles
('Mi Goreng Original 85g', 'Indomie', 'Instant Noodles', 3500.00, 240, '2027-04-15'),
('Soto Mie 70g', 'Indomie', 'Instant Noodles', 3300.00, 180, '2027-03-20'),
('Ayam Bawang 69g', 'Indomie', 'Instant Noodles', 3300.00, 200, '2027-05-10'),
('Kari Ayam 72g', 'Indomie', 'Instant Noodles', 3400.00, 150, '2027-02-28'),
('Mie Goreng 91g', 'Mie Sedaap', 'Instant Noodles', 3500.00, 210, '2027-06-01'),
('Soto 75g', 'Mie Sedaap', 'Instant Noodles', 3300.00, 160, '2027-04-30'),
('Kari Spesial 77g', 'Mie Sedaap', 'Instant Noodles', 3400.00, 140, '2027-05-22'),
('Ayam Bawang 65g', 'Sarimi', 'Instant Noodles', 3000.00, 130, '2027-03-12'),
('Ayam Bawang 70g', 'Supermi', 'Instant Noodles', 3200.00, 125, '2027-07-08'),
('Pop Mie Ayam Cup 75g', 'Pop Mie', 'Instant Noodles', 6500.00, 95, '2027-02-14'),
-- Condiments
('Kecap Manis 275ml', 'Bango', 'Condiments', 13500.00, 85, '2028-01-10'),
('Kecap Manis 520ml', 'ABC', 'Condiments', 22500.00, 70, '2028-02-18'),
('Kecap Manis Pedas 135ml', 'Sedaap', 'Condiments', 8500.00, 75, '2028-01-25'),
('Saus Sambal Asli 335ml', 'ABC', 'Condiments', 14500.00, 90, '2027-11-05'),
('Saus Sambal Extra Pedas 335ml', 'ABC', 'Condiments', 15000.00, 75, '2027-11-20'),
('Saus Tomat 335ml', 'ABC', 'Condiments', 13000.00, 80, '2027-12-01'),
('Sambal Pedas 135ml', 'Indofood', 'Condiments', 9500.00, 60, '2027-10-15'),
('Bumbu Nasi Goreng 20g', 'Indofood', 'Condiments', 2500.00, 150, '2027-09-12'),
('Kaldu Ayam 100g', 'Masako', 'Condiments', 5500.00, 100, '2028-03-05'),
('Penyedap Rasa Sapi 100g', 'Masako', 'Condiments', 5500.00, 95, '2028-03-15'),
('Penyedap Rasa Ayam 250g', 'Sasa', 'Condiments', 9500.00, 80, '2028-02-01'),
('Tepung Bumbu Serbaguna 225g', 'Sajiku', 'Condiments', 8500.00, 110, '2027-08-30'),
('Garam Beryodium 250g', 'Refina', 'Condiments', 3500.00, 200, '2029-01-01'),
-- Cooking Essentials
('Minyak Goreng 2L', 'Bimoli', 'Cooking Essentials', 38000.00, 60, '2027-09-01'),
('Minyak Goreng 1L', 'Filma', 'Cooking Essentials', 20000.00, 70, '2027-10-01'),
('Minyak Goreng 2L', 'Tropical', 'Cooking Essentials', 37500.00, 55, '2027-08-15'),
('Minyak Goreng 1L', 'Sania', 'Cooking Essentials', 19500.00, 65, '2027-09-20'),
('Minyak Goreng Pouch 2L', 'Sunco', 'Cooking Essentials', 36500.00, 50, '2027-07-30'),
('Gula Pasir 1kg', 'Gulaku', 'Cooking Essentials', 17500.00, 120, '2028-05-01'),
('Gula Pasir 1kg', 'Rose Brand', 'Cooking Essentials', 17000.00, 100, '2028-05-15'),
('Tepung Terigu Protein Sedang 1kg', 'Segitiga Biru', 'Cooking Essentials', 13000.00, 90, '2027-06-10'),
('Tepung Terigu Protein Tinggi 1kg', 'Cakra Kembar', 'Cooking Essentials', 14500.00, 70, '2027-06-15'),
('Tepung Terigu Protein Rendah 1kg', 'Kunci Biru', 'Cooking Essentials', 13500.00, 65, '2027-06-20'),
('Santan Kelapa 65ml', 'Kara', 'Cooking Essentials', 5000.00, 140, '2027-08-05'),
('Margarin 200g', 'Palmia', 'Cooking Essentials', 9500.00, 80, '2027-05-25'),
-- Rice and Grains
('Beras Pandan Wangi 5kg', 'Topi Koki', 'Rice and Grains', 75000.00, 40, '2027-06-30'),
('Beras Premium 5kg', 'Fortune', 'Rice and Grains', 68000.00, 45, '2027-07-15'),
('Beras Premium 5kg', 'Sania', 'Rice and Grains', 70000.00, 35, '2027-07-20'),
-- Coffee and Tea
('Kopi Bubuk Special 165g', 'Kapal Api', 'Coffee and Tea', 13500.00, 90, '2027-12-10'),
('Special Mix 3in1 Sachet 25g', 'Kapal Api', 'Coffee and Tea', 2000.00, 300, '2027-08-18'),
('Duo Susu 3in1 Sachet 27g', 'Torabika', 'Coffee and Tea', 2200.00, 280, '2027-09-09'),
('Moka 3in1 Sachet 26g', 'Torabika', 'Coffee and Tea', 2200.00, 250, '2027-09-14'),
('Cappuccino 3in1 Sachet 25g', 'Good Day', 'Coffee and Tea', 2300.00, 260, '2027-10-02'),
('White Koffie Original 20g', 'Luwak', 'Coffee and Tea', 2000.00, 270, '2027-08-28'),
('Brown Coffee Sachet 27g', 'Kopiko', 'Coffee and Tea', 2100.00, 240, '2027-07-17'),
('Kopi Susu Sachet 31g', 'ABC', 'Coffee and Tea', 2300.00, 230, '2027-09-30'),
('Teh Celup Melati 25 Kantong', 'Sariwangi', 'Coffee and Tea', 9500.00, 120, '2027-11-11'),
('Teh Celup Jasmine 25 Kantong', 'Tong Tji', 'Coffee and Tea', 11000.00, 100, '2027-11-25'),
('Teh Celup 25 Kantong', 'Sosro', 'Coffee and Tea', 8500.00, 110, '2027-12-05'),
-- Beverages
('Air Mineral 600ml', 'Aqua', 'Beverages', 3500.00, 500, '2028-01-01'),
('Air Mineral 600ml', 'Le Minerale', 'Beverages', 3500.00, 450, '2028-01-05'),
('Air Mineral 600ml', 'Club', 'Beverages', 3000.00, 300, '2028-01-10'),
('Air Mineral 600ml', 'Cleo', 'Beverages', 3200.00, 220, '2028-01-12'),
('Air Mineral 600ml', 'Ades', 'Beverages', 3500.00, 260, '2028-01-15'),
('Teh Botol Original 450ml', 'Sosro', 'Beverages', 5500.00, 200, '2027-05-05'),
('Teh Pucuk Harum 350ml', 'Teh Pucuk Harum', 'Beverages', 4000.00, 220, '2027-05-12'),
('Fruit Tea Apel 350ml', 'Sosro', 'Beverages', 5000.00, 170, '2027-04-22'),
('Green Tea Madu 330ml', 'Nu', 'Beverages', 5000.00, 150, '2027-04-18'),
('Larutan Penyegar Jeruk Nipis 320ml', 'Cap Kaki Tiga', 'Beverages', 7500.00, 140, '2027-06-06'),
('Minuman Serbuk Jeruk Peras 14g', 'Nutrisari', 'Beverages', 1500.00, 350, '2027-09-21'),
('Minuman Serbuk Orange 14g', 'Marimas', 'Beverages', 1000.00, 380, '2027-09-25'),
('Minuman Serbuk Cokelat Pop Ice 25g', 'Pop Ice', 'Beverages', 2000.00, 300, '2027-10-10'),
-- Dairy
('Susu UHT Full Cream 1L', 'Ultra Milk', 'Dairy', 19500.00, 80, '2027-03-01'),
('Susu UHT Cokelat 250ml', 'Ultra Milk', 'Dairy', 6500.00, 150, '2027-03-08'),
('Susu UHT Full Cream 190ml', 'Indomilk', 'Dairy', 4800.00, 140, '2027-03-15'),
('Susu Kental Manis Putih 370g', 'Indomilk', 'Dairy', 13500.00, 100, '2027-10-12'),
('Susu UHT Cokelat 250ml', 'Cimory', 'Dairy', 7500.00, 120, '2027-03-22'),
('Yogurt Drink Squeeze Strawberry 120g', 'Cimory', 'Dairy', 9500.00, 90, '2027-01-20'),
('Susu UHT Full Cream 1L', 'Greenfields', 'Dairy', 22500.00, 70, '2027-03-30'),
('Susu UHT Cokelat Kids 125ml', 'Ultra Mimi', 'Dairy', 3500.00, 180, '2027-04-05'),
-- Snacks
('Keripik Kentang Sapi Panggang 68g', 'Chitato', 'Snacks', 11500.00, 130, '2027-02-10'),
('Keripik Singkong Original 60g', 'Qtela', 'Snacks', 9500.00, 110, '2027-02-18'),
('Snack Rumput Laut 36g', 'Taro', 'Snacks', 5500.00, 160, '2027-03-03'),
('Chiki Balls Keju 55g', 'Chiki', 'Snacks', 5000.00, 170, '2027-02-25'),
('Jetz Stick Cokelat 40g', 'Jetz', 'Snacks', 4500.00, 150, '2027-03-09'),
('Potabee Sapi Panggang 65g', 'Potabee', 'Snacks', 10500.00, 120, '2027-02-12'),
('Kacang Kulit Original 190g', 'Garuda', 'Snacks', 12500.00, 100, '2027-05-19'),
('Pilus Rasa Ayam Bawang 100g', 'Garuda', 'Snacks', 9000.00, 105, '2027-05-27'),
('Kacang Bawang 200g', 'Dua Kelinci', 'Snacks', 13000.00, 90, '2027-06-02'),
('Twisko Jagung Bakar 70g', 'Twisko', 'Snacks', 6000.00, 115, '2027-03-14'),
('Kerupuk Udang 200g', 'Finna', 'Snacks', 12000.00, 85, '2027-06-18'),
-- Biscuits
('Biskuit Kelapa 300g', 'Roma', 'Biscuits', 11000.00, 100, '2027-04-08'),
('Malkist Cokelat 135g', 'Roma', 'Biscuits', 8500.00, 120, '2027-04-14'),
('Biskuit Susu Cokelat 40g', 'Biskuat', 'Biscuits', 4000.00, 160, '2027-04-20'),
('Biskuit Better Choco 103g', 'Better', 'Biscuits', 7500.00, 110, '2027-05-02'),
('Good Time Choco Chips 71g', 'Good Time', 'Biscuits', 8000.00, 100, '2027-05-09'),
('Nextar Brownies 112g', 'Nextar', 'Biscuits', 9500.00, 95, '2027-04-26'),
('Marie Susu 120g', 'Marie Regal', 'Biscuits', 7000.00, 105, '2027-05-16'),
('Wafer Cokelat 130g', 'Chocolatos', 'Biscuits', 9000.00, 90, '2027-04-11'),
-- Confectionery
('Cokelat Batang Chunky 58g', 'SilverQueen', 'Confectionery', 18500.00, 80, '2027-08-08'),
('Cokelat Almond 40g', 'Cha Cha', 'Confectionery', 9000.00, 90, '2027-08-14'),
('Wafer Cokelat Karamel 32g', 'Beng-Beng', 'Confectionery', 2500.00, 200, '2027-07-03'),
('Cokelat Pasta Sachet 10g', 'Choki Choki', 'Confectionery', 1500.00, 250, '2027-08-20'),
('Permen Gummy Rasa Buah 35g', 'Yupi', 'Confectionery', 2000.00, 220, '2027-09-05'),
('Permen Kopi 120g', 'Kopiko', 'Confectionery', 11500.00, 130, '2028-02-10'),
('Wafer Cokelat 176g', 'Tango', 'Confectionery', 10500.00, 100, '2027-06-24'),
-- Canned Food
('Sarden Saus Tomat 155g', 'ABC', 'Canned Food', 11500.00, 90, '2028-06-01'),
('Sarden Saus Pedas 155g', 'ABC', 'Canned Food', 11500.00, 85, '2028-06-10'),
('Kornet Sapi 198g', 'Pronas', 'Canned Food', 26500.00, 60, '2028-07-01'),
('Sarden Saus Tomat 155g', 'Pronas', 'Canned Food', 11000.00, 70, '2028-06-20'),
-- Frozen Food
('Chicken Nugget 500g', 'Fiesta', 'Frozen Food', 42000.00, 50, '2027-04-01'),
('Sosis Ayam 360g', 'Fiesta', 'Frozen Food', 33000.00, 45, '2027-04-10'),
('Nugget Ayam 500g', 'Champ', 'Frozen Food', 40000.00, 55, '2027-04-15'),
('Sosis Ayam Royal 375g', 'Belfoods', 'Frozen Food', 35000.00, 40, '2027-03-25'),
('Singles Cheese Sausage 50g', 'Kanzler', 'Frozen Food', 8500.00, 100, '2027-03-18'),
('Bakso Sapi 300g', 'Kanzler', 'Frozen Food', 28000.00, 45, '2027-03-28'),
-- Bakery
('Roti Tawar Kupas', 'Sari Roti', 'Bakery', 16500.00, 40, '2026-11-05'),
('Roti Sobek Cokelat', 'Sari Roti', 'Bakery', 14500.00, 35, '2026-11-03'),
-- Household
('Sabun Cuci Piring Jeruk Nipis 780ml', 'Mama Lime', 'Household', 17500.00, 70, '2029-01-01'),
('Sabun Cuci Piring Lemon 780ml', 'Mama Lemon', 'Household', 17500.00, 65, '2029-01-01'),
('Deterjen Cair 800ml', 'So Klin', 'Household', 21000.00, 60, '2029-02-01'),
('Deterjen Bubuk 900g', 'Daia', 'Household', 18500.00, 75, '2029-02-10'),
('Pembersih Lantai Karbol Cemara 780ml', 'Wipol', 'Household', 16000.00, 55, '2029-03-01'),
('Sabun Mandi Batang 72g', 'Nuvo', 'Household', 4000.00, 140, '2029-01-20'),
('Pasta Gigi 190g', 'Formula', 'Household', 13500.00, 90, '2029-01-25'),
('Tisu Wajah 250 Lembar', 'Paseo', 'Household', 12500.00, 110, '2029-04-01');
