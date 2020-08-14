/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author kevin
 */
public class conection {
    public  static String connectDatabase() {
        String url = null;
        try {
            // We register the MySQL driver
            // Registramos el driver de MySQL
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                return ("Error al registrar el driver de MySQL: " + ex);
            }
            Connection connection = null;
            url ="jdbc:mysql://node216866-aulavirtual.j.layershift.co.uk:3306/labvirtual";
            // Database connect
            // Conectamos con la base de datos
            connection = DriverManager.getConnection(
                    url,
                    "root", "scIXNFHIDr");           
            boolean valid = connection.isValid(50000);
            return(valid ? "TEST OK" : "TEST FAIL");
        } catch (java.sql.SQLException sqle) {
            return("Error al conectar con la base de datos de MySQL (" + url + "): " + sqle);
        }
    }    
}
