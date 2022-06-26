/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Cliente;
import ModeloDAO.ClienteDAO2;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet (name ="srvCliente" , urlPatterns = {"/srvCliente"})
public class srvCliente extends HttpServlet {

            
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        System.out.println("-------------------------------------------------------------");
        
        String accion = request.getParameter("accion");
        try{
            if( accion != null){
                switch (accion){
                    case "identificar":
                            identificar(request, response);
                            break;
                    case "cerrar":
                        cerrarsession(request, response);
                    default:
                        response.sendRedirect("login.jsp"); 
                }   
            } else {
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e ){
            System.out.println("el horror");
            System.out.println(e);

            try{
                this.getServletConfig().getServletContext().getRequestDispatcher("/mensaje.jsp").forward(request, response);
                
            } catch (Exception ex){
                System.out.println("Error" + ex.getMessage());
            }
        }
        
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
        processRequest(request, response);
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
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void identificar(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion;
        ClienteDAO2 dao2;
        Cliente cliente;
        
        cliente =obtenerCliente(request);
        dao2 = new ClienteDAO2();
        dao2.identificar(cliente);
        
        sesion = request.getSession();
        sesion.setAttribute("sessionid", Math.random());
        sesion.setAttribute("pefil", cliente.getRol());
       
        
        if (cliente.getRol()==1){   
            sesion.setAttribute("Administrador", cliente);
            request.setAttribute("msje", "Bienvenido al sistema");
        
            this.getServletConfig().getServletContext().getRequestDispatcher("/indexadmin.jsp").forward(request, response);
        }
        //else if (cliente !=null && cliente.getRol().getRolUsuario().equals("usuario") ){
        if (cliente.getRol() == 2){ 
            sesion.setAttribute("Usuarios", cliente);
            this.getServletConfig().getServletContext().getRequestDispatcher("/indexusuario.jsp").forward(request, response);
        }
        //else if (cliente !=null && cliente.getRol().getRolUsuario().equals("usuario") ){
        if (cliente.getRol() == 3){ 
            sesion.setAttribute("Usuarios", cliente);
            this.getServletConfig().getServletContext().getRequestDispatcher("/indexesteticista.jsp").forward(request, response);
        }
        //else if (cliente !=null && cliente.getRol().getRolUsuario().equals("usuario") ){
        if (cliente.getRol() == 4){ 
            sesion.setAttribute("Usuarios", cliente);
            this.getServletConfig().getServletContext().getRequestDispatcher("/indexestetisuscrito.jsp").forward(request, response);
                    
        }/*else if (cliente !=null && cliente.getRol().getRolUsuario().equals("estesticista") ){
            sesion = request.getSession();
            sesion.setAttribute("Esteticista", cliente);
            this.getServletConfig().getServletContext().getRequestDispatcher("indexestesticista.jsp").forward(request, response);
        }else if (cliente !=null && cliente.getRol().getRolUsuario().equals("estetisuscrito") ){
            sesion = request.getSession();
            sesion.setAttribute("Esteticista", cliente);
            this.getServletConfig().getServletContext().getRequestDispatcher("indexestesticista.jsp").forward(request, response);
        }else {
            request.setAttribute("msje", "Credenciales Incorrectas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } */
    }

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response)throws Exception  {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("Cliente", null);
        sesion.invalidate();
        response.sendRedirect("login.jsp");
        
    }

    private Cliente obtenerCliente(HttpServletRequest request) {        
        Cliente cli = new Cliente();       
        cli.setCorreoUsuario(request.getParameter("txtemail"));
        cli.setPassUsuario(request.getParameter("txtpass"));
        return cli;
    }

}
