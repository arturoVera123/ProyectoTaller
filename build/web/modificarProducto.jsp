<%-- 
    Document   : modificarProducto
    Created on : 17/02/2018, 02:02:37 PM
    Author     : 67063
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
        <% 
         if ( request.getParameter("idproductos") != null && request.getParameter("Nombre") != null && request.getParameter("Lote")!=null && request.getParameter("Cantidad") !=null && request.getParameter("Precio") !=null && request.getParameter("TipoPaletas")!=null){
         
       session.setAttribute("idproductos", request.getParameter("idproductos"));
      
        %>
        
        Modificar Datos
        <table>
            <tbody>
            <form action="actualizar.jsp"   method="post "style="margin:5rem;">

                <tr>     
                    <td>Nombre del producto</td>
                    <td> 
                        <input type="text" name="Nombre"  placeholder="Nombre" value="<%=request.getParameter("Nombre") %>" required="">
                    </td>
                </tr>
                <tr>  
                     <td>Numero de lote</td>
                    <td>
                        <input type="text" name="Lote" placeholder="Lote"  value="<%=request.getParameter("Lote") %>" required="">
                    </td>
                </tr>
                <tr>
                     <td>Cantidad del producto</td>
                    <td>
                        <input type="text" name="Cantidad" placeholder="Cantidad"  value="<%=request.getParameter("Cantidad") %>"  required="">
                    </td>
                </tr>
                <tr> 
                    
                     <td>Precio del producto</td>
                    <td>
                        <input type="text" name="Precio" placeholder="Precio" value="<%=request.getParameter("Precio") %>" required="">
                    </td>
                </tr>
                <tr>
                     <td>Tipo de Dulce</td>
                    <td>
                        <input type="text" name="TipoPaletas" placeholder="Tipo de dulce" value="<%=request.getParameter("TipoPaletas") %>" required="">
                    </td>
                </tr>  
                <tr>
                    <td>
                        <input type="submit" value="Enviar datos">
                    </td>
                </tr>   

            
            </form>
            <%   } else {

    out.print("sdsd");
}%>
        </tbody>
        </table>
    </body>
</html>
