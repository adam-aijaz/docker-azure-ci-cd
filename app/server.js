
const express = require("express");
const app = express();
const port = process.env.PORT || 8085;

app.get("/", (_req, res) => res.send("Hello from Docker + GitHub Actions + Azure!"));

app.listen(port, () => console.log(`Server listening on ${port}`));
