var express = require("express");
var bodyParser = require("body-parser");
var mysql = require('mysql');
var methodOverride = require('method-override');
var PORT = 3004;
var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: "application/vnd.api+json" }));

app.use(methodOverride("_method"));

var exphb = require('express-handlebars');

app.engine("handlebars", exphb({ defaultLayout: "main" }));
app.set("view engine", "handlebars");





app.use(express.static("public"));


var routes = require("./controllers/burger_controller.js");
app.use("/", routes);

app.listen(PORT, function() {
    console.log("App listening on PORT " + PORT);
  });



