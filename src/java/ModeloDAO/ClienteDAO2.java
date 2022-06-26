/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import Modelo.Cliente;
import Modelo.Rol;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author zeroouh
 */
public class ClienteDAO2 extends conexion {

    public Cliente identificar(Cliente clien) throws Exception {
      
        
        conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;
        
        
        System.out.println ("-----------------acaaaaaa--------------------");
        System.out.println (clien.getCorreoUsuario());
         System.out.println (clien.getPassUsuario());
        String sql = "SELECT * FROM USUARIO U "
                + "INNER JOIN ROL R ON U.ID_rol = R.ID_rol "
                + "WHERE U.ESTADO = 1 AND U.Correo ='" + clien.getCorreoUsuario() + "' "
                + "AND U.Contraseña='" + clien.getPassUsuario() + "' ";
        
        System.out.println(sql);
    
       
        con = new conexion();
        
        

        try {
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next() == true) {
                    
              clien.setID_usu(rs.getInt("ID_USU"));
                System.out.println("el ID");
                System.out.println(clien.getID_usu());
                clien.setRol(rs.getInt("ID_ROL"));
                clien.setConnected(true);
                
                clien.setNomUsuario(rs.getString("Nombre"));
                clien.setApeUsuario(rs.getString("Apellido"));
                clien.setEstado(rs.getByte("estado"));
                
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        } finally {
            if (rs != null && rs.isClosed() == false) {
                rs.close();
            }
            rs = null;
            if (st != null && st.isClosed() == false) {
                st.close();
            }
            if (cn != null & cn.isClosed() == false) {
                cn.close();
            }
            cn = null;
        }
        return clien;
    }
}
