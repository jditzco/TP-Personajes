import express from "express";
import PersonajesService from "./src/services/personajes-services.js"
import PeliculasService from "./src/services/peliculas-services.js";

import index from "./src/pages/index.js";
import login from "./src/pages/login.js";
import Personaje from "./src/models/Personaje.js"
console.clear()

async function getPeliculas(){
    let svc = new PeliculasService();
    let data;
    data = await svc.getAll()
    console.log(data);
}

const app = express()
const port = 3000
app.listen(port, () => console.log(`Example app listening on port ${port}`))

app.get('/', (req, res) => res.send(index))

//app.post('/', async (req, res) => {
//    console.log(req.body)
//    let svc = new PersonajesService()
//    svc.insert(new Personaje("nombre1", null, 18, 50, "historia1234", "Tilin"))
//
//    res.sendStatus(index)
//})

app.get('/auth/login', (req, res) => res.send(login + "<br><br>NO HAY QUE HACERLO TODAVIA"))

app.get('/characters', async (req, res) => {
    let svc = new PersonajesService()
    let data = await svc.getAll()
    res.send(JSON.stringify(data))
})