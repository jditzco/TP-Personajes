import express from "express";
import PersonajesService from "./src/services/personajes-services.js"
import PeliculasService from "./src/services/peliculas-services.js";

import index from "./src/pages/index.js";
import login from "./src/pages/login.js";
console.clear()


// --- funcion piola

const getPeliculas = async() => JSON.stringify(await new PeliculasService().getAll())
const getPersonajes = async() => JSON.stringify(await new PersonajesService().getAll())

// --- fin de funcion piola


const app = express()
const port = 3000
app.listen(port, () => console.log(`Example app listening on port ${port}`))

app.get('/', async(req, res) => res.send(index(await getPeliculas(), await getPersonajes())))

app.get('/auth/login', (req, res) => res.send(login + "<br><br>NO HAY QUE HACERLO TODAVIA"))