const index = (pelis, personajes) => (`
    <h3>
        <a href="/auth/login">Ir a: /auth/login</a>
        <br>
    </h3>
    <h1>Hola mundo!</h1>
    <span>en el index linea 12 hay una funcion muy piola</span>
    <br><br>
    <form method="post" action="/">
        <input type="test" name="insert" value="Deshabilitado" disabled>
        <input type="submit" disabled>
    </form>
    <h1>Data Películas:</h1>
    <span>${pelis}</span>
    <h1>Data Personajes:</h1>
    <span>${personajes}</span>
`)

export default index