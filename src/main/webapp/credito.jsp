<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 6/6/2024
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Solicitud de Crédito</title>
</head>
<body>
<h2>Solicitud de Crédito</h2>
<form action="procesarCredito.jsp" method="post">
    <label for="monto">Monto del crédito:</label>
    <input type="number" id="monto" name="monto" required><br><br>

    <label for="plazo">Plazo (meses):</label>
    <select id="plazo" name="plazo" required>
        <option value="12">12 meses</option>
        <option value="24">24 meses</option>
        <option value="36">36 meses</option>
        <option value="60">60 meses</option>
    </select><br><br>

    <input type="submit" value="Calcular">
</form>
</body>
</html>