# Bamazon

## What is it?

Bamazon is an Amazon-like storefront. The app takes in orders from customers and depletes stock from the store's inventory. Once the customer has placed an order, the app checks if the store has enough of the product to meet the customer's request. If not, the app notifies the customer, and then prevents the order from going through. If the store does have enough of the product, the customer's order will be fulfilled, and the SQL database is updated to reflect the remaining quantity. Once the update goes through, the customer is shown the total cost of their purchase.

## Technologies Used
* Node.js/npm packages
* Javascript
* MySQL

## The App in Action

![Before the purchase is made, the item in the mySQL table at position 9 has a stock quantity of 100. In Bash, the user requests to buy 2 of the item with ID 9.](https://github.com/zagara2/bamazon/blob/master/screenshots/db_table_before_purchase.JPG)
Before the purchase is made, the item in the mySQL table at position 9 has a stock quantity of 100. In Bash, the user requests to buy 2 of the item with ID 9.

![After the purchase of 2 of the item at position 9 is made, the console logs "Order placed!". The stock quantity of the item in the mySQL table at position 9 then goes from 100 to 98. Because the price per item at position 9 was 7 dollars, the console logs "You spent $14!" after the purchase is made.](https://github.com/zagara2/bamazon/blob/master/screenshots/db_table_after_purchase.JPG)
After the purchase of 2 of the item at position 9 is made, the console logs "Order placed!". The stock quantity of the item in the mySQL table at position 9 then goes from 100 to 98. Because the price per item at position 9 was 7 dollars, the console logs "You spent $14!" after the purchase is made.

![The user has requested 400 of the item at position 7, which only has a quantity of 25. So, the console logs the message "Insufficient quantity!" and does not change any values in the database.](https://github.com/zagara2/bamazon/blob/master/screenshots/insufficient_quantity_requested.JPG)
The user has requested 400 of the item at position 7, which only has a quantity of 25. So, the console logs the message "Insufficient quantity!" and does not change any values in the database.


## Future Plans for Improvement
* Display all the items in the store to the customer before asking them the ID and quantity of the product they want to buy.
* Program the app to track product sales across the store's departments and then provide a summary of the highest-grossing departments in the store.