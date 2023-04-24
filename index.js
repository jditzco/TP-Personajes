import PersonajesService from "./src/services/personajes-services";
import Personaje from "./src/models/Personaje";

async function getAll(){
    let svc = new PersonajesService();
    let data;

    data = await svc.getAll()
    console.log(data);

    //console.log(data[0].Id);
    //console.log(data[0].id);
    //console.log(data[0].Id);
}