var express = require('express');	// Import express
var app = express();	// Create an express app

// Creamos una ruta para el camino por defecto
app.get('/', function(req, res) {
    res.send('Soy la Home Page!');
})


app.get('/about', function(req, res) {
    res.send('Soy la pagina del about!');
})


// Iniciamos el servidor
app.listen(3000, function() {
    console.log('Example app listening on port 3000!');
})

// Ejecutamos la app escribiendo en la consola: node index.js

// Vamos al explorador y escribimos este link: http://localhost:3000
