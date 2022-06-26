
package ModeloDAO;

import Config.conexion;
import Interfaces.CRUD;
import Modelo.Servicio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class ServicioDAO implements CRUD{
conexion cn= new conexion();
Connection con;
PreparedStatement ps;
ResultSet rs;
Servicio s=new Servicio();

    @Override
    public List listar() {
        ArrayList<Servicio>list=new ArrayList<>();
        String sql ="select * from listserv";
        try{
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Servicio ser= new Servicio();
                ser.setId_ser(rs.getInt("ID_listserv"));
                ser.setName_ser(rs.getString("Nom_serv"));
                list.add(ser);
            }
        } catch (Exception e){
        }
        return list;
    }
    
    @Override
    public Servicio list(int id) {
        String sql ="select * from listserv where ID_listserv="+id;
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                s.setId_ser(rs.getInt("ID_listserv"));
                s.setName_ser(rs.getString("Nom_serv"));
            }
        } catch (Exception e){
        }
        return s;
    }

    @Override
    public boolean add(Servicio ser) {
        String sql= "insert into listserv (Nom_serv) values('"+ser.getName_ser()+"')";
        try{
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e){
        }
        return false;
        
    }

    @Override
    public boolean edit(Servicio ser) {
       String sql= "update listserv set Nom_serv='"+ser.getName_ser()+"' where ID_listserv="+ser.getId_ser();
       try  {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
       } catch (Exception e) {
           
       }
       return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from listserv where ID_listserv="+id;
     
     try{
     
     con = cn.conectar();
     ps=con.prepareStatement(sql);
     ps.executeUpdate();
     
     
     
     
     }catch(Exception e){
     
     } return false;
    }

    public List buscar(String texto) {
        List<Servicio> list=new ArrayList<>();
        String sql;
        sql="select * from listserv where ID_listserv like '%"+texto+"%' or Nom_serv '%"+texto+"%'";
        try {
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Servicio s= new Servicio();
                s.setId_ser(rs.getInt("id_ser"));
                s.setName_ser(rs.getString("name_ser"));
                list.add(s);
            }
        } catch (Exception e) {
            
        }
        return list;
    }
    
    
}
