<%-- 
    Document   : actualizar
    Created on : 17/02/2018, 04:32:01 PM
    Author     : 67063
--%>

<%@page import="Modelo.Consulta"%>
<%@page import="Controlador.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        <h2>Actualizar datos</h2>
        
        <% 
        if (request.getParameter("Nombre") != null && request.getParameter("Lote")!=null && request.getParameter("Cantidad") !=null && request.getParameter("Precio") !=null && request.getParameter("TipoPaletas")!=null){
         
         String idusuario=session.getAttribute("idproductos").toString();
         
         
         Usuario usuario = new Usuario (idusuario,request.getParameter("Nombre"),request.getParameter("Lote"),request.getParameter("Cantidad"),request.getParameter("Precio"),request.getParameter("TipoPaletas"));
        
         boolean respuesta =Consulta.ActualizarUsuario(usuario);
           session.invalidate();
           
           if(respuesta !=false){
           
              out.println("Datos actualiados correctamente");
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
