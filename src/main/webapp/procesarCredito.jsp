<%@ page import="org.dilan.sesiones.evalsolicitud.Cliente" %><%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 6/6/2024
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Procesar Crédito</title>
</head>
<body>
<%
    double monto = Double.parseDouble(request.getParameter("monto"));
    int plazo = Integer.parseInt(request.getParameter("plazo"));
    double tasaInteres;

    switch (plazo) {
        case 12:
            tasaInteres = 0.25;
            break;
        case 24:
            tasaInteres = 0.45;
            break;
        case 36:
            tasaInteres = 0.60;
            break;
        case 60:
            tasaInteres = 0.75;
            break;
        default:
            tasaInteres = 0;
            break;
    }

    double tasaInteresMensual = tasaInteres / 12;
    double pagoMensual = (monto * tasaInteresMensual) / (1 - Math.pow(1 + tasaInteresMensual, -plazo));


    Cliente cliente = (Cliente) session.getAttribute("cliente");
%>

<h2>Información del Cliente</h2>
<p>Nombre: <%= cliente.getNombre() %></p>
<p>Sexo: <%= cliente.getSexo() %></p>
<p>Edad: <%= cliente.getEdad() %></p>
<p>Sueldo mensual: <%= cliente.getSueldo() %></p>

<h2>Información del Crédito</h2>
<p>Monto del crédito: <%= monto %></p>
<p>Plazo del crédito: <%= plazo %> meses</p>
<p>Tasa de interés anual: <%= tasaInteres * 100 %>%</p>

<p>Pago mensual: <%= pagoMensual %></p>

</body>
</html>