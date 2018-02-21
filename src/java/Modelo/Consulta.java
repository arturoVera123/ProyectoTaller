/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;
import java.util.ArrayList;
import java.util.List;

import Controlador.Usuario;
import Controlador.mysqlConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author 67063
 */
public class Consulta {
    
static String query;
static Statement stm=null;
static ResultSet rst =null;
static PreparedStatement pstam=null;

static Connection conexion =null;
    public static List <Usuario> MostrarUsuario() {
    
        List<Usuario> usuario= new ArrayList<Usuario>();
    try {
    
    query ="SELECT  id,nombre,lote,cantidad,precio,tipo FROM dulces";
			
			 conexion = mysqlConexion.Conexion();
			
			stm=conexion.createStatement();
			
			rst=stm.executeQuery(query);
			
    while (rst.next()) {
				Usuario us = new Usuario (rst.getString("id"),rst.getString("nombre"),rst.getString("lote"),rst.getString("cantidad"),rst.getString("precio"),rst.getString("tipo"));
				usuario.add(us);
			}
    conexion.close();
    return  usuario;
    
    }catch (SQLException ex){
        
    }
                return null;
    }
    
    public static boolean insertarUsuario( Usuario usuario){
        
      boolean respuesta=false;
    try {
          query="INSERT INTO dulces VALUES (null,?,?,?,?,?)";
            conexion=mysqlConexion.Conexion();
            pstam=conexion.prepareStatement(query);
           
            pstam.setString(1, usuario.getNombre());
            pstam.setString(2, usuario.getLote());
            pstam.setString(3, usuario.getCantidad());
            pstam.setString(4, usuario.getPrecio());
            pstam.setString(5, usuario.getTipo());
            pstam.executeUpdate();
            conexion.close();
            
            respuesta = true;
            
    } catch (SQLException ex) {
        Logger.getLogger(Consulta.class.getName()).log(Level.SEVERE, null, ex);
        respuesta=false;
    }
    return respuesta;
        
        }
    
    public static boolean  ActualizarUsuario(Usuario usuario){
        
        boolean respuesta=false;
        try {
        query="UPDATE dulces SET nombre='"+usuario.getNombre()+"',lote='"+usuario.getLote()+"',cantidad='"+usuario.getCantidad()+"',precio='"+usuario.getPrecio()+"',tipo='"+usuario.getTipo()+"' WHERE id="+usuario.getIdproducto()+" ";
        
        
    
        conexion=mysqlConexion.Conexion();
        stm=conexion.createStatement();
        stm.executeUpdate(query);
        respuesta =true;
    } catch (SQLException ex) {
        Logger.getLogger(Consulta.class.getName()).log(Level.SEVERE, null, ex);
        respuesta =false;
    }
        return respuesta;
    
    }
       public static boolean  EliminarUsuario(String idproductos){
        
        boolean respuesta=false;
        try {
        query="DELETE FROM dulces WHERE id="+idproductos+"";
        
        
    
        conexion=mysqlConexion.Conexion();
        stm=conexion.createStatement();
        stm.execute(query);
        respuesta =true;
    } catch (SQLException ex) {
        Logger.getLogger(Consulta.class.getName()).log(Level.SEVERE, null, ex);
        respuesta =false;
    }
        return respuesta;
    
    }
    
        
}

