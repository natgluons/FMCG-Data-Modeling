/* Query 1: Berapa rata-rata umur customer jika dilihat dari marital statusnya? */
SELECT "Marital Status", AVG(Age) AS AverageAge
FROM customer
GROUP BY "Marital Status";

/* Query 2: Berapa rata-rata umur customer jika dilihat dari gender nya? */
SELECT Gender, AVG(Age) AS AverageAge
FROM customer
GROUP BY Gender;

/* Query 3: Tentukan nama store dengan total quantity terbanyak! */
SELECT StoreName, SUM(Qty) AS TotalQuantity
FROM transactiontable
INNER JOIN store ON transactiontable.StoreID = store.StoreID
GROUP BY StoreName
ORDER BY TotalQuantity DESC
LIMIT 1;

/* Query 4: Tentukan nama produk terlaris dengan total amount terbanyak! */
SELECT p."Product Name", SUM(t.totalamount) AS totalsales
FROM transactiontable t
INNER JOIN product p ON t.productid = p.productid
GROUP BY p."Product Name"
ORDER BY totalsales DESC
LIMIT 1;



