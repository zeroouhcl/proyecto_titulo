<%-- 
    Document   : edit
    Created on : 14 may. 2022, 8:46:03
    Author     : zeroouh
--%>

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
            <div class="col-lg-4">
                <% 
            ServicioDAO dao=new ServicioDAO();
            int id=Integer.parseInt((String)request.getAttribute("idser"));
            Servicio ser=(Servicio)dao.list(id);
            %>
            <h1>Modificar Servicio</h1>
            <form>
                Nombre Servicio:<br>
                <input class="form-control" type="text" name="Nombre Servicio" value="<%= ser.getName_ser()%>"><br>
                <input type="hidden" name="txtidser" value="<%= ser.getId_ser()%>"><br>
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>
            </form> 
            </div>
        </div>
    </body>
</html>
