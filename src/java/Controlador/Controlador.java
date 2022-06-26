/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;


import Modelo.Servicio;
import ModeloDAO.ServicioDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controlador extends HttpServlet {

    String listar="vistas/listar.jsp";
    String add="vistas/add.jsp";
    String edit="vistas/edit.jsp";
    Servicio s=new Servicio();
    ServicioDAO dao=new ServicioDAO();
    int id;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso=listar;
        }else if (action.equalsIgnoreCase("add")){
            acceso=add; 
        } else if (action.equalsIgnoreCase("Agregar")){
            String nomser= request.getParameter("Nombre Servicio");
            s.setName_ser(nomser);
            dao.add(s);
            acceso=listar;
        }
        else if (action.equalsIgnoreCase("Editar")){
            request.setAttribute("idser", request.getParameter("id"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            id = Integer.parseInt(request.getParameter("txtidser"));
            String nomser= request.getParameter("Nombre Servicio");
            s.setId_ser(id);
            s.setName_ser(nomser);
            dao.edit(s);
            acceso=listar;
        }else if (action.equalsIgnoreCase("Eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            s.setId_ser(id);
            dao.eliminar(id);
            acceso=listar;
            
        }else if (action.equalsIgnoreCase("buscar")){
            String dato=request.getParameter("txtBuscar");
            List<Servicio> list=dao.buscar(dato);
            request.setAttribute("listar", list);
            request.getRequestDispatcher("listar.jsp").forward(request, response);
            
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        //processRequest(request, response);
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
