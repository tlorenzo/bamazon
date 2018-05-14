var mysql = require('mysql');
var inquirer = require('inquirer');
var prompt = require('prompt');
var table = require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "bamazon"
});

//Running this application will first display all of the items available for sale. 
//Include the ids, names, and prices of products for sale.

connection.connect(function (err) {
    if (err) throw err;
    start();
});

// function which prompts the user for what action they should take
function start() {
    console.log("This is Bamazon.  Welcome to Bamazon.");


    connection.connect(function (err) {
        connection.query("SELECT * FROM products", function (err, res) {
            if (err) throw err
            else console.table(res);
        });
    });

    console.log("Listed below are products we have in stock.  We promise they're not as boring as they sound.");
    purchaseFunction();
}



function purchaseFunction() {

    inquirer.prompt([
        {
          name: "id",
          type: "input",
          message: "Enter the Item ID of the product you are interested in."
        
        },
        
        {
          name: "quantity",
          type: "input",
          message: "How many units of the product would you like to buy?"
        }

      ]).then(function(answer){
       var itemID = answer.id;
       var productQuantity = answer.quantity;
       var selectFrom = 'SELECT * FROM products WHERE ?';
    console.log ("Your answer was " + itemID);
    console.log ("Your quantity was " + productQuantity);
    


    })


}