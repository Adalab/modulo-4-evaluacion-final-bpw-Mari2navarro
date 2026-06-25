const express = require("express");
const cors = require("cors");
const connection = require("./db");

const app = express();

app.use(cors());
app.use(express.json());

const PORT = 4000;

app.get("/", (req, res) => {
  res.send("🚀 API Artistas Urbanas funcionando");
});

connection
  .getConnection()
  .then(() => {
    console.log("✅ Conexión con MySQL establecida");
  })
  .catch((error) => {
    console.error("❌ Error al conectar con MySQL:", error);
  });

app.listen(PORT, () => {
  console.log(`Servidor escuchando en http://localhost:${PORT}`);
});
