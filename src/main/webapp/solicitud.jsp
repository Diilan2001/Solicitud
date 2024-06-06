<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 6/6/2024
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Solicitud de Cliente</title>
</head>
<body>
<h2>Solicitud de Cliente</h2>
<form action="procesarSolicitud.jsp" method="post">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required><br><br>

    <label for="sexo">Sexo:</label>
    <input type="text" id="sexo" name="sexo" required><br><br>

    <label for="edad">Edad:</label>
    <input type="number" id="edad" name="edad" required><br><br>

    <label for="sueldo">Sueldo mensual:</label>
    <input type="number" id="sueldo" name="sueldo" required><br><br>

    <input type="submit" value="Enviar">
</form>
</body>
</html>
