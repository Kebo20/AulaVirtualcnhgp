/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author kevin
 */
public class Conexion {

  
    private static   com.mysql.jdbc.Connection con = null;
  
    
 public static java.sql.Connection getConexion()
    {
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
//            con= (Connection)  DriverManager.getConnection("jdbc:mysql://node216866-aulavirtual.j.layershift.co.uk:3306/labvirtual","root","scIXNFHIDr");
//            con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/labvirtual","root","laboratoriovirtual"); 
            con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/labvirtual","root","200397"); 
           
            return  con;
            
        } catch (ClassNotFoundException | SQLException ex) { 
            return null;
        }
    }
    
}


