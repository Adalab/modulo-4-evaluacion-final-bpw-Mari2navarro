const express = require("express");
const cors = require("cors");
const connection = require("./db");

const app = express();

app.use(cors());
app.use(express.json());

const PORT = 4000;

// Ruta de prueba
app.get("/", (req, res) => {
  res.send("🚀 API Artistas Urbanas funcionando");
});

// GET todos los artistas
app.get("/artistas", async (req, res) => {
  // Ejecutamos la consulta SQL
  const [results] = await connection.query("SELECT * FROM artistas");

  // Enviamos los resultados en formato JSON
  res.json(results);
});

// Comprobamos la conexión con MySQL
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
