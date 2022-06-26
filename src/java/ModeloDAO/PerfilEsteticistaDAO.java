/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.conexion;
import Modelo.PerfilEsteticista;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zeroouh
 */
public class PerfilEsteticistaDAO {
    Connection con;
    conexion cn= new conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    public List listar(){
        List<PerfilEsteticista>listper=new ArrayList<>();
        String sql="select * from esteti";
        try{
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                PerfilEsteticista per= new PerfilEsteticista();
                per.setID_este(rs.getInt(1));
                per.setName_este(rs.getString(2));
                per.setImagen(rs.getBinaryStream(3));
                per.setDescripcion(rs.getString(4));
                listper.add(per);
            }
        } catch (Exception e) {  
        }
        return listper;
    }
    
    public void listarIMG(int id, HttpServletResponse response){
        String sql="select * from esteti where ID_este="+id;
        InputStream inputStream=null;
        OutputStream outputStream=null;
        BufferedInputStream bufferedInputStream=null;
        BufferedOutputStream bufferedOutputStream=null;
        response.setContentType("image/*");
        try{
            outputStream=response.getOutputStream();
            con=cn.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            if(rs.next()){
                inputStream=rs.getBinaryStream("imagen");
            }
            bufferedInputStream=new BufferedInputStream(inputStream);
            bufferedOutputStream=new BufferedOutputStream(outputStream);
            int i=0;
            while((i=bufferedInputStream.read())!=-1) {
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
            
        }
    }
}
