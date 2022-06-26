<%-- 
    Document   : listarCli
    Created on : 16 may. 2022, 14:05:44
    Author     : Acer
--%>

<%@page import="Modelo.Cliente"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <a href="ControladorCli?accion=add" >Agregar Nuevo Cliente </a>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>ROL</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Correo</th>
                        <th>Contraseña</th>
                    </tr>
                </thead>
                <%
                ClienteDAO dao=new ClienteDAO();
                List<Cliente>list=dao.listar_cliente();
                Iterator<Cliente>iter=list.iterator();
                Cliente cli=null;
                while(iter.hasNext()){
                    
                    cli=iter.next();
                    
                    
                    
                %>
                <tbody>
                    <tr>
                        <td><%= cli.getIdCliente()%></td>
                        <td><%= cli.getRolCliente()%></td>
                        <td><%= cli.getNomUsuario()%></td>
                        <td><%= cli.getApeUsuario()%></td>
                        <td><%= cli.getCorreoUsuario()%></td>
                        <td><%= cli.getPassUsuario()%></td>
                        <td>
                            <a href="ControladorCli?accion=editar&id=<%= cli.getIdCliente()%>">Editar</a>
                            <a href="ControladorCli?accion=eliminar&id=<%= cli.getIdCliente()%>">Eliminar</a>
                        
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

            
        </div>
    </body>
</html>
