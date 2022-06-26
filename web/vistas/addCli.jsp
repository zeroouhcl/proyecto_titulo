<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <script type="text/javascript" src="recursos/funciones.js"></script>
    </head>
    <body>
        <div align="center">
            <h1>Forma parte de TuStetic</h1> <br/>
            <form name="formRegistro"">
                <input type="hidden" name="tipo_Oculto" value="cliente"/>
               
                <table width="200" id="enfasis-columna">
                    <caption>Formulario de Registro</caption>
                    <tr>   <td> Nombre: </td> <td><input type="text" name="nomUsuario"  /> </td> </tr>
                    <tr> <td>  Apellido: </td> <td> <input type="text" name="apeUsuario" /> </td> </tr>
                    <tr> <td>  Correo: </td> <td><input type="email" name="correoUsuario" />  </td> </tr>
                    <tr> <td>   Contraseña: </td> <td><input type="password" name="passUsuario" onfocus="this.selected()"/> </td> </tr>
                    <tr> <td></td><td><input type="submit" value="Registrar" name="accion"/> </td> </tr>
                </table>
            </form>
        </div>
    </body>
</html>
