
package Config;
import java.sql.*;

/*public class Conexion {
    Connection con;
    public Conexion (){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tustetic3","root","");
        } catch (Exception e){
            System.err.println("Error:"+e);        
    }
    }
    public Connection getConnection(){
        return con;
    }
    }*/
public class conexion {
    private final String baseDatos= "tustetic3";
    private final String servidor="jdbc:mysql://localhost/" + baseDatos;
    private final String usuario= "root";
    private final String clave= "";
    
        public Connection conectar(){
        Connection cn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(servidor, usuario, clave);
            System.out.println(cn);
        }catch(Exception e){
            System.out.println("Error al conectar" + e.getMessage());
        }
        return cn;
    }
}