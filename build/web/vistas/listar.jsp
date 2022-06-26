<%-- 
    Document   : listar
    Created on : 14 may. 2022, 8:45:42
    Author     : zeroouh
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.*"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Servicio"%>
<%@page import="ModeloDAO.ServicioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Servicios</h1>
            <div class="container">
                <div class="navbar">
                    <a class="btn btn-success" href="Controlador?accion=add">Agregar nuevo</a>
                    <form class="form-inline">
                    </form>
                </div>
            </div>
            <table class="table table-bordered" border="1">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">SERVICIO</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%  
                    ServicioDAO dao=new ServicioDAO();
                    List<Servicio>list=dao.listar();
                    Iterator<Servicio>iter=list.iterator();
                    Servicio ser=null;
                    while (iter.hasNext()) {
                        ser=iter.next();
                        
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= ser.getId_ser()%></td>
                        <td class="text-center"><%= ser.getName_ser()%></td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?accion=Editar&id=<%= ser.getId_ser()%>">Editar </a>
                            <a class="btn btn-danger" href="Controlador?accion=Eliminar&id=<%= ser.getId_ser()%>">Eliminar </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
