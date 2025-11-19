const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Dockerized Node.js App!");
});

app.listen(8080, () => {
  console.log("Server running on port 8080");
});
