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

app.get("/artistas/:id", async (req, res) => {
  const id = req.params.id;

  const [results] = await connection.query(
    "SELECT * FROM artistas WHERE id = ?",
    [id],
  );

  res.json(results);
});

app.post("/artistas", async (req, res) => {
  const { nombre_artistico, ciudad, genero, url_spotify, foto } = req.body;

  const [result] = await connection.query(
    `INSERT INTO artistas
    (nombre_artistico, ciudad, genero, url_spotify, foto)
    VALUES (?, ?, ?, ?, ?)`,
    [nombre_artistico, ciudad, genero, url_spotify, foto],
  );

  res.json({
    success: true,
    id: result.insertId,
  });
});

app.put("/artistas/:id", async (req, res) => {
  const id = req.params.id;

  const { nombre_artistico, ciudad, genero, url_spotify, foto } = req.body;

  await connection.query(
    `UPDATE artistas
     SET nombre_artistico = ?,
         ciudad = ?,
         genero = ?,
         url_spotify = ?,
         foto = ?
     WHERE id = ?`,
    [nombre_artistico, ciudad, genero, url_spotify, foto, id],
  );

  res.json({ success: true });
});

app.delete("/artistas/:id", async (req, res) => {
  const id = req.params.id;

  await connection.query("DELETE FROM artistas WHERE id = ?", [id]);

  res.json({ success: true });
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
