# 🎤 API Artistas Urbanas

API REST desarrollada con **Node.js**, **Express** y **MySQL** para gestionar una colección de artistas urbanas españolas y su información musical.

Este proyecto ha sido desarrollado como evaluación final del **Módulo 4** del Bootcamp de Desarrollo Web de **Adalab**.

---

## 🚀 Tecnologías utilizadas

- Node.js
- Express
- MySQL
- mysql2
- dotenv
- cors
- Nodemon

---

## 📂 Estructura del proyecto

```text
.
├── database
│   ├── schema.sql
│   └── data.sql
├── src
│   ├── db.js
│   ├── index.js
├── .gitignore
├── package.json
└── README.md
```

---

## ⚙️ Instalación

1. Clona este repositorio.

```bash
git clone https://github.com/Adalab/modulo-4-evaluacion-final-bpw-Mari2navarro.git
```

2. Instala las dependencias.

```bash
npm install
```

3. Crea un archivo `.env`.

```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=tu_contraseña
DB_NAME=artistas_urbanas
PORT=4000
```

4. Inicia el servidor.

```bash
npm run dev
```

---

## 🗄️ Base de datos

La carpeta `database` incluye:

- `schema.sql`: estructura de la base de datos.
- `data.sql`: datos iniciales del proyecto.

---

## 📌 Endpoints

| Método | Endpoint        | Descripción                      |
| ------ | --------------- | -------------------------------- |
| GET    | `/artistas`     | Obtener todas las artistas       |
| GET    | `/artistas/:id` | Obtener una artista por su id    |
| POST   | `/artistas`     | Crear una nueva artista          |
| PUT    | `/artistas/:id` | Actualizar una artista existente |
| DELETE | `/artistas/:id` | Eliminar una artista             |

---

## 🧪 Pruebas

Todos los endpoints han sido comprobados utilizando **Postman**.

---

## 🌱 Mejoras futuras

Este proyecto continuará evolucionando con nuevas funcionalidades:

- 🎵 Añadir canciones.
- 💿 Gestionar álbumes.
- 🤝 Registrar colaboraciones entre artistas.
- 🔎 Implementar búsquedas y filtros.
- ⚛️ Desarrollar un frontend en React.

---

## 👩‍💻 Autora

**Mari Navarro**

Proyecto desarrollado para la evaluación final del Módulo 4 del Bootcamp de Programación Web de Adalab.
