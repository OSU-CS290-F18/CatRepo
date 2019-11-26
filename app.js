const bodyParser = require("body-parser");
const express = require("express");
const flash = require('connect-flash');
const handlebars = require("express-handlebars");
const path = require("path");
const session = require("express-session");
const app = express();

// Session
app.use(session({
  name: "raosh",
  resave: true,
  saveUninitialized: true,
  secret: ""
}));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "static")))
app.use(flash());


app.listen(app.get("port"), () => {
  console.log(`App running at http://localhost:${app.get("port")}; press Ctrl-C to terminate.`);
});
