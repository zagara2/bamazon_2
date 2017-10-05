CREATE database Bamazondb;

Use Bamazondb;

Create table stock ( 
	position int not null,
	product_name Varchar(100) not null,
	department_name Varchar(100) not null,
	price int not null,
	stock_quantity int not null,
	Primary KEY (position)
	);

SELECT * FROM stock;

INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(1, "used jockstrap", "sports", 1000, 3);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(2, "system of a down cd", "music", 25, 10);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(3, "crockpot", "cooking", 40, 8);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(4, "vase", "home decor", 60, 5);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(5, "picture frame", "home decor", 10, 20);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(6, "lacrosse stick", "sports", 30, 40);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(7, "rolling pin", "cooking", 20, 25);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(8, "magnets", "home decor", 5, 100);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(9, "computer duster", "electronics", 7, 100);
INSERT INTO stock(position, product_name, department_name, price, stock_quantity) VALUES(10, "keyboard", "electronics", 150, 20);

