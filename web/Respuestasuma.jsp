<%-- 
    Document   : Respuestasuma
    Created on : 17/02/2018, 12:17:15 PM
    Author     : 67063
--%>

<%@page import="Modelo.Consulta"%>
<%@page import="Controlador.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if ( request.getParameter("Nombre") != null && request.getParameter("Lote")!=null && request.getParameter("Cantidad") !=null && request.getParameter("Precio") !=null && request.getParameter("TipoPaletas")!=null){
        
            Usuario us = new Usuario(request.getParameter("id"),request.getParameter("Nombre"), request.getParameter("Lote"), request.getParameter("Cantidad"), request.getParameter("Precio"), request.getParameter("TipoPaletas"));
       
           boolean respuesta =Consulta.insertarUsuario(us);
           
           if(respuesta !=false)
           
               out.println("Datos ingresados corecctamente" +respuesta );
           
           else 
               
                 out.println("Datos ingresados" +respuesta );
        }
        
        %>
        <a href="consultaProductos.jsp">Ver Dato ingresado</a>
    </body>
</html>
