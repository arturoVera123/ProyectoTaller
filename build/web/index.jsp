<%@page import="Modelo.Consulta"%>
<%@page import="Controlador.mysqlConexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%@ page import="java.util.List"%>
<%@ page import="Controlador.Usuario"%>
<%@ page import="java.sql.Connection"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="estilos.css">
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


</head>
<body>
    

    
	<h1 class="text-center fondo">Bienvenido</h1>
	<br>
	<h2 class="text-center">Ingresa tus datos</h2>

	<%
		Date date = new Date();
		// obtener la hora y salida por pantalla con formato:
		DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
	
	%>

	<div class="jumbotron divEstilo"           >
		<form  action="Login" enctype="multipart/form-data"  method="get" name="flogin" id="flogin" class="margin2">
			<label>Nombre de usuario:</label> 
			<input type="text" name="username" id="username" class="form-control"> 
			<label>Contraseña</label>
			<input type="password" name="password" id="password" class="form-control">
			<input type="submit" value="conectarse"
				class="btn margin2  btn-success text-center"">
		</form>

	</div>
	<h2 class="text-center margin-top4">
		<%
			out.println("Hora: " + hourFormat.format(date));
		%>
	</h2>
	<%
String msg = (String)session.getAttribute("servletMsg");
	out.print("tu valor es:"+msg);
	
	
%>

</body>
</html>