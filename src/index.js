import express from "express";
import dotenv from "dotenv";
dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;
app.get("/", (req, res) => {
  res.send("this is my first node project which is dockerized");
});

app.listen(PORT, () => {
  console.log(`app is listening on ${PORT}`);
});
