import express from "express";
import PersonajesService from "./src/services/personajes-services.js"
import PeliculasService from "./src/services/peliculas-services.js";

import index from "./src/pages/index.js";
import login from "./src/pages/login.js";
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
app.listen(port, () => console.log(`Example app listening on port ${port}`))

app.get('/', (req, res) => {
    res.send(index)

})

app.get('/auth/login', (req, res) => {
    res.send(login)
})