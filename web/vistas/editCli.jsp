<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="Modelo.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <script type="text/javascript" src="recursos/funciones.js"></script>
    </head>
    <body>
        <%
        ClienteDAO dao= new ClienteDAO();
        int id=Integer.parseInt((String)request.getAttribute("idCliente"));
        Cliente cli=(Cliente)dao.list(id);
        
        %>
        <div align="center">
            <h1>Modificar</h1> <br/>
            <form name="formRegistro" onsubmit="return validarForma(this)">
                <input type="hidden" name="id_Oculto" value="<%=cli.getIdCliente() %>"/>
                <table width="200" id="enfasis-columna">
                    <caption>Formulario de Registro</caption>
                    <tr>   <td> Nombre: </td> <td><input type="text" name="nomUsuario"  value="<%= cli.getNomUsuario() %>" /> </td> </tr>
                    <tr> <td>  Apellido: </td> <td> <input type="text" name="apeUsuario" value="<%= cli.getApeUsuario()   %>" /> </td> </tr>
                    <tr> <td>  Rol: </td> <td> <input type="text" name="rolUsuario" value="<%=cli.getRolCliente()  %>" /> </td> </tr>
                    <tr> <td>  Correo: </td> <td><input type="email" name="correoUsuario"  value="<%=cli.getCorreoUsuario() %>"/>  </td> </tr>
                    <tr> <td>   Contraseña: </td> <td><input type="password" name="passUsuario" onfocus="this.selected()" value="<%=cli.getPassUsuario()%>"/> </td> </tr>
                    <tr> <td></td><td><input type="submit" value="Actualizar" name="accion"/> </td> </tr>
                </table>
            </form>


        </div>




    </body>
</html>
