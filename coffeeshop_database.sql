/**Coffe Shop 
Items: Coffee-based drinks,Specialty teas
Pastries
Sandwiches and wraps 
Salads and healthy bowls
Smoothies and fresh juices
Seasonal beverages
Breakfast items
Desserts
Vegan
Local artisan products**/
CREATE TABLE coffee_shop(product_id INTEGER PRIMARY KEY,product_name TEXT,category TEXT,price NUMERIC,stock_quantity INTEGER);

INSERT INTO coffee_shop VALUES(1,"coffee-based drinks","Beverage",15.00,23);
INSERT INTO coffee_shop VALUES(2,"specialty teas","Beverage",19.00,20);
INSERT INTO coffee_shop VALUES(3,"Pastries","pastry",10.00,15);
INSERT INTO coffee_shop VALUES(4,"sandwiches and wraps","snack",11.00,10);
INSERT INTO coffee_shop VALUES(5,"smoothies","Beverage",17.99,19);
INSERT INTO coffee_shop VALUES(6,"seasonal beverages","Beverages",9.99,8);
INSERT INTO coffee_shop VALUES(7,"breakfast items","snacks",18.00,5);
INSERT INTO coffee_shop VALUES(8,"desserts","snacks",17.00,30);
INSERT INTO coffee_shop VALUES(9,"vegan","snacks",25.00,15);
INSERT INTO coffee_shop VALUES(10,"local artisan","pastry",16.50,3);

SELECT *FROM coffee_shop ORDER BY price;
