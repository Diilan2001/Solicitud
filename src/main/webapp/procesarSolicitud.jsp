<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 6/6/2024
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Procesar Solicitud</title>
</head>
<body>
<%@ page import="org.dilan.sesiones.evalsolicitud.Cliente" %>
<%
    String nombre = request.getParameter("nombre");
    String sexo = request.getParameter("sexo");
    int edad = Integer.parseInt(request.getParameter("edad"));
    double sueldo = Double.parseDouble(request.getParameter("sueldo"));

    Cliente cliente = (Cliente) session.getAttribute("cliente");

    if (sueldo <= 700) {
        out.println("<h2>El sueldo debe ser mayor a $700.</h2>");
        out.println("<a href='solicitud.jsp'>Volver a intentar</a>");
    } else {
        cliente.setNombre(nombre);
        cliente.setSexo(sexo);
        cliente.setEdad(edad);
        cliente.setSueldo(sueldo);
        cliente.setSolicitudCompleta(true);

        session.setAttribute("cliente", cliente);

        out.println("<h2>Solicitud completada.</h2>");
        out.println("<a href='index.jsp'>Volver al menú principal</a>");
    }
%>
</body>
</html>
