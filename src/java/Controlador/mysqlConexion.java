/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author 67063
 */
public class mysqlConexion {
    
        static String url ="jdbc:mysql://localhost:3305/tienda";
	static String Usuario ="root";
	static String  Contrasena ="Nokiaestodo1";
	
	
public static Connection Conexion() throws SQLException  {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection(url, Usuario, Contrasena);
		return conexion;
		
	}catch(ClassNotFoundException ex) {
		
	return null;
	}
	}
}
