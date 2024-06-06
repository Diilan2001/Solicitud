<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 6/6/2024
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Menú</title>
</head>
<body>

<%@ page import="org.dilan.sesiones.evalsolicitud.Cliente" %>
<%
  String opcion = request.getParameter("opcion");
  Cliente cliente = (Cliente) session.getAttribute("cliente");

  if (cliente == null) {
    cliente = new Cliente();
    session.setAttribute("cliente", cliente);
  }

  if ("solicitud".equals(opcion)) {
    response.sendRedirect("solicitud.jsp");
  } else if ("credito".equals(opcion)) {
    if (!cliente.isSolicitudCompleta()) {
      out.println("<h2>Primero debe completar la solicitud.</h2>");
      out.println("<a href='index.jsp'>Volver al menú principal</a>");
    } else {
      response.sendRedirect("credito.jsp");
    }
  } else {
    out.println("<h2>Opción no válida.</h2>");
    out.println("<a href='index.jsp'>Volver al menú principal</a>");
  }
%>
</body>
</html>