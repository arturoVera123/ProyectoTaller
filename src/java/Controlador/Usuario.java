/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

/**
 *
 * @author 67063
 */
public class Usuario {

    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLote() {
        return lote;
    }

    public void setLote(String lote) {
        this.lote = lote;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Usuario() {
    }

    public String getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(String idproducto) {
        this.idproducto = idproducto;
    }


 

    
        String idproducto    ;
	String nombre;
	String lote;
	String cantidad;
	String precio;
	String tipo;

    public Usuario(String idproducto, String nombre, String lote, String cantidad, String precio, String tipo) {
        this.idproducto = idproducto;
        this.nombre = nombre;
        this.lote = lote;
        this.cantidad = cantidad;
        this.precio = precio;
        this.tipo = tipo;
    }
        

    
    
}
