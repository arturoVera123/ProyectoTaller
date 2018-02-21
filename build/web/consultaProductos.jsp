<%-- 
    Document   : consultaProductos
    Created on : 16/02/2018, 09:46:01 AM
    Author     : 67063
--%>
<%@page import="Modelo.Consulta"%>
<%@ page import="java.util.List"%>
<%@ page import="Controlador.Usuario"%>
<%@ page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <h2 class="text-center" style="margin-bottom:5rem;">Consulta de productos disponible</h2>
        
        <table  class="table table-inverse" border="1">
        <thead>
     
        <th  class="text-center">Nombre del dulce</th>
        <th  class="text-center">No de Lote</th>
        <th  class="text-center">Cantidad disponible </th>
        <th  class="text-center">Precio de venta</th>
        <th  class="text-center" > Clasificacion del Dulce</th>
        
        
        </thead>
        <tbody
<% 
	
    
List<Usuario> usuario= Consulta.MostrarUsuario();

for (int i=0;i<usuario.size();i++){
	%>
            <tr>
                
                <th class="text-center"><%=usuario.get(i).getNombre() %></th>
               <th class="text-center"><%=usuario.get(i).getLote()%></th>
               <th class="text-center"><%=usuario.get(i).getCantidad() %></th>
               <th class="text-center"><%=usuario.get(i).getPrecio() %></th>
               <th class="text-center"><%=usuario.get(i).getTipo() %></th>
              
            </tr>
           
<%	
	}

	
%>
    </tbody>
    </table>
    
    <div style="text-align-last:right;">
       <form>
<input type="button" value="Regresar" onclick="window.location.href='acceso.jsp'" />
</form>
        
        
       
    </div>
    
     
    </body>
</html>
