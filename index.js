import PersonajesService from "./src/services/personajes-services.js"


// import Personaje from "./src/models/Personaje"

getAll()

async function getAll(){
    let svc = new PersonajesService();
    let data;

    data = await svc.getAll()
    console.log(data);

    //console.log(data[0].Id);
    //console.log(data[0].id);s
    //console.log(data[0].Id);
}