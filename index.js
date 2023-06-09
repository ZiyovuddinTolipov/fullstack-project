const express = require("express");
const path = require("path");
const mysql = require("mysql2");
const bodyParser = require("body-parser");

var con = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "",
  database: "maktab",
});

const app = express();

app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.get("/", function (req, res) {
  con.query("select * from sinflar ", function (err, result) {
    if (err) throw err;
    res.render("index.ejs", { malumot: result });
  });
});

app.post('/', (req, res) => {
  con.query(`
  INSERT INTO sinflar(
    id,
    ismi,
    familiya,
    otasini_ismii,
    telefon_raqami,
    uy_manzili
    ) 
  VALUES (
  '${req.body.id}',
  '${req.body.ismi}',
  '${req.body.familiya}'
  '${req.body.otasini_ismii}',
  '${req.body.uy_manzili}',
  '${req.body.telefon_raqami}'
  )`,
    function (err, result) {
      if (err) throw err;
      res.redirect("/")
    });
})

app.get("/del/:id", (req, res) => {
  con.query(
    `Delete from sinflar  where id=${req.params.id}`,
    function (err, result) {
      if (err) throw err;
      res.redirect("/");
    }
  );
});

app.get("/edit/:id", (req, res) => {
  con.query(
    ("select * from sinflar  where id=" + req.params.id),
    function (err, result) {
      if (err) throw err;
      res.render("edit", { malumot: result });
    }
  );
});

app.get("/post", (req, res) => {
  con.query(
    ("select * from sinflar  where id=" + req.params.id),
    function (err, result) {
      if (err) throw err;
      res.render("edit", { malumot: result });
    }
  );
});

app.post("/edit/:id", (req, res) => {
  con.query(
    `update sinflar set 
    id="${req.body.id}",
    ismi="${req.body.ismi}",
    familiya="${req.body.familiya}", 
    otasini_ismii="${req.body.otasini_ismii}", 
    uy_manzili="${req.body.uy_manzili}",
    telefon_raqami="${req.body.telefon_raqami}",
      where id="${req.params.id}"`,
    function (err, result) {
      if (err) throw err;
      res.redirect("/");
    }
  );
});



app.listen(3000, () => {
  console.log("server 3000 portda ishga tushdi");
});

