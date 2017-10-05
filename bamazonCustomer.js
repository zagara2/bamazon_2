var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "Iliketrains4",
    database: "Bamazondb"
});

//display all the items available for purchase
connection.query("SELECT * FROM products", function(err, resp) {
    for (var i = 0; i < resp.length; i++) {
        console.log("Item ID: " + resp[i].position);
        console.log("Name: " + resp[i].product_name);
        console.log("Department: " + resp[i].department_name);
        console.log("Price: " + resp[i].price + "\n");
    }
});

function bamazonify() {
    inquirer.prompt([{
        name: "position",
        type: "input",
        message: "What is the Item ID?",
    }, {
        name: "Quantity",
        type: "input",
        message: "How Many?",
    }]).then(function(answer) {




        var query = "SELECT position, price, stock_quantity FROM stock WHERE ?";
        connection.query(query, { position: answer.position }, function(err, res) {

            var stock_init = res[0].stock_quantity;

            var mult = answer.Quantity;
            var price = mult * res[0].price;
            var stock_new = stock_init - answer.Quantity;
            if (stock_init < answer.Quantity) {
                console.log("Insufficient quantity!");
            } else {


                connection.query("UPDATE stock SET ? WHERE ?", [{
                    stock_quantity: stock_new
                }, {
                    position: answer.position
                }], function(err, res) {
                    console.log("Order placed!")
                    console.log("You spent $" + price + "!")
                });



            }
        });


    })
};
bamazonify();
