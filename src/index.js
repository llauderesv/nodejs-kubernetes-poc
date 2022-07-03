const express = require("express");
const cors = require("cors");

const app = express();

const { PORT = 5432 } = process.env;

app.use(cors());
app.get("/", (req, res) => res.json({ status: "Ok" }).status(200));
app.get("/healthz", (req, res) => res.json({ status: "healthy" }).status(200));

app.listen(PORT, () =>
  console.log(`API server is listening at http://localhost:${PORT}`)
);
