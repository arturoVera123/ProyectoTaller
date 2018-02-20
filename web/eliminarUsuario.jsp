<%-- 
    Document   : eliminarUsuario
    Created on : 18/02/2018, 07:42:57 AM
    Author     : 67063
--%>

<%@page import="Modelo.Consulta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Uusario</title>
    </head>
    <body>
        
        <%
        
        if( request.getParameter("idproductos") != null){
        
            String idproductos=request.getParameter("idproductos");
            Consulta consulta =new Consulta();
            
            
            boolean respuesta =Consulta.EliminarUsuario(idproductos);
           
           
           if(respuesta !=false){
           
              out.println("Datos eliminado correctamente");
                 out.println("<a href='consultaProductos.jsp'>Ver cambios</a>");
        }else {
               
                 out.println("Datos  no actualizados"+respuesta );
           %>
           <a href="acceso.jsp">Ver cambios</a>
           }
           <%    
         }
         }else 
                
                %>
         
         
                 
         </body>
</html>
