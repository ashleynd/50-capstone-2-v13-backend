"use strict";

const app = require("./app");
const { PORT } = require("./config");
// var express = require('express');
var cors = require('cors');
// var app = express();


app.get('/mainquotelist', cors(), function (req, res, next) {
  res.json({msg: 'This is CORS-enabled for a Single Route'})
})

app.listen(PORT, function () {
  console.log(`Started on http://localhost:${PORT}`);
});
