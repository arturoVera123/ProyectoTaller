<%-- 
    Document   : agregarProductos
    Created on : 17/02/2018, 01:35:57 PM
    Author     : 67063
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Consulta"%>
<%@ page import="java.util.List"%>
<%@ page import="Controlador.Usuario"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">


	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
    </head>
    <body>
        <h2 class="text-center">Agregar Productos </h2>
        
        <form action="Respuestasuma.jsp" style="margin:5rem;">
         
          Nombre de productos ;  <input type="text" name="Nombre"  placeholder="Nombre" required="">
      Numero de Lote;  <input type="text" name="Lote" placeholder="Lote" required="">
      Cantidad  que ingresa;  <input type="text" name="Cantidad" placeholder="Cantidad"  required="">
     Precio de Venta ;   <input type="text" name="Precio" placeholder="Precio" required="">
     Tipo de Dulce   <input type="text" name="TipoPaletas" placeholder="Tipo de dulce" required="">  
       
            
 <input type="submit" value="Ingresar"><br>        
                    
            
        </form>
    </body>
</html>
