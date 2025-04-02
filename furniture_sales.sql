/*Furniture Sales table*/
CREATE TABLE furniture_sales(ID INTEGER NOT NULL PRIMARY KEY,
    transaction_date TEXT,product TEXT,price INTEGER,
    payment_type TEXT,name TEXT,city TEXT,state TEXT,country TEXT,
    account_created TEXT,last_login TEXT);
    
/*Insert data in the table*/
INSERT INTO furniture_sales (transaction_date, product, price, payment_type, name, city, state, country, account_created, last_login)
VALUES 
('2025-03-15', 'Chair', 120.00, 'Credit Card', 'Alice Smith', 'Cape Town', 'Western Cape', 'South Africa', '2024-01-10', '2025-02-28'),
('2025-03-16', 'Table', 300.50, 'Cash', 'Bob Johnson', 'Nairobi', 'Nairobi County', 'Kenya', '2024-02-05', '2025-03-10'),
('2025-03-17', 'Sofa', 700.00, 'Debit Card', 'Carlos Ruiz', 'Madrid', 'Madrid', 'Spain', '2024-05-20', '2025-03-12'),
('2025-03-18', 'Desk', 250.99, 'Credit Card', 'Diana King', 'New York', 'New York', 'USA', '2024-08-15', '2025-03-15'),
('2025-03-19', 'Shelf', 180.00, 'Credit Card', 'Edward Lee', 'Sydney', 'New South Wales', 'Australia', '2024-03-22', '2025-03-14'),
('2025-03-20', 'Wardrobe', 850.75, 'Cash', 'Fiona Adams', 'London', 'England', 'United Kingdom', '2024-07-30', '2025-03-13'),
('2025-03-21', 'Dining Set', 1200.00, 'Debit Card', 'George Brown', 'Toronto', 'Ontario', 'Canada', '2024-09-05', '2025-03-16'),
('2025-03-22', 'Bed', 950.00, 'Credit Card', 'Helen White', 'Johannesburg', 'Gauteng', 'South Africa', '2024-11-10', '2025-03-15'),
('2025-03-23', 'Cabinet', 300.00, 'Cash', 'Ian Black', 'Mumbai', 'Maharashtra', 'India', '2024-12-01', '2025-03-18'),
('2025-03-24', 'Lamp', 60.00, 'Debit Card', 'Julia Green', 'Berlin', 'Berlin', 'Germany', '2024-04-15', '2025-03-19'),
('2025-03-25', 'Mirror', 75.99, 'Credit Card', 'Kevin Brown', 'Paris', 'Ile-de-France', 'France', '2024-06-20', '2025-03-20'),
('2025-03-26', 'Armchair', 250.00, 'Cash', 'Linda Clark', 'Mexico City', 'Mexico City', 'Mexico', '2024-07-01', '2025-03-19'),
('2025-03-27', 'Chest of Drawers', 450.00, 'Debit Card', 'Michael Wright', 'Tokyo', 'Tokyo', 'Japan', '2024-05-15', '2025-03-18'),
('2025-03-28', 'Bookcase', 200.00, 'Credit Card', 'Nancy Lee', 'Rome', 'Lazio', 'Italy', '2024-02-25', '2025-03-17'),
('2025-03-29', 'Stool', 55.00, 'Cash', 'Oscar Perez', 'Buenos Aires', 'Buenos Aires', 'Argentina', '2024-08-10', '2025-03-16'),
('2025-03-30', 'TV Stand', 300.00, 'Credit Card', 'Patricia Gomez', 'Bogotá', 'Bogotá', 'Colombia', '2024-10-15', '2025-03-15'),
('2025-03-31', 'Bench', 120.99, 'Debit Card', 'Quinton Davis', 'Dubai', 'Dubai', 'UAE', '2024-03-28', '2025-03-14'),
('2025-04-01', 'Coffee Table', 175.50, 'Credit Card', 'Rachel Wilson', 'Shanghai', 'Shanghai', 'China', '2024-05-12', '2025-03-13'),
('2025-04-02', 'Couch', 600.00, 'Cash', 'Steve Thompson', 'Melbourne', 'Victoria', 'Australia', '2024-06-25', '2025-03-15'),
('2025-04-03', 'Nightstand', 200.00, 'Debit Card', 'Tina Evans', 'Cape Town', 'Western Cape', 'South Africa', '2024-09-30', '2025-03-16'),
('2025-04-04', 'Wall Unit', 400.00, 'Credit Card', 'Victor Martinez', 'Mexico City', 'Mexico City', 'Mexico', '2024-11-11', '2025-03-20');

SELECT * FROM furniture_sales WHERE price <= 200 AND payment_type = 'Credit Card'; /*filter by price and payment_type*/

/*Calculate average,min,max of the furniture price*/
SELECT product,AVG(price) AS AVG_Price FROM furniture_sales GROUP BY payment_type HAVING AVG_Price > 200;
SELECT product,MAX(price) AS MAX_Price FROM furniture_sales;
SELECT product,MIN(price) AS MIN_Price FROM
furniture_sales;

/*The use of CASE to group data values that don't yet exist*/
SELECT COUNT(*) AS furniture_count,
    CASE
        WHEN price > 200 THEN 'Heavy Furniture'
        WHEN price <= 200 THEN 'Light Furniture'
    END AS furniture_category
FROM 
    furniture_sales
GROUP BY 
    furniture_category
ORDER BY
    furniture_category;
