<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Menu Principal</title>
</head>
<body>
<h1>Menu Principal</h1>
<form action="menu.jsp" method="post">
    <input type="radio" id="solicitud" name="opcion" value="solicitud">
    <label for="solicitud">Solicitud</label><br>
    <br>
    <input type="radio" id="credito" name="opcion" value="credito">
    <label for="credito">Crédito</label><br>
    <br>
    <input type="submit" value="Seleccionar">
</form>


</body>

</html>
