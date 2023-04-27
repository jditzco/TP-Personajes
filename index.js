import express from "express";
import PersonajesService from "./src/services/personajes-services.js"
import PeliculasService from "./src/services/peliculas-services.js";

import indexhtml from "./indexhtml.js";
// import Personaje from "./src/models/Personaje"
console.clear()

async function getPeliculas(){
    let svc = new PeliculasService();
    let data;
    data = await svc.getAll()
    console.log(data);
}

const app = express()
const port = 3000

app.get('/', (req, res) => {
    res.send(indexhtml)
})

app.listen(port, () => console.log(`Example app listening on port ${port}`))