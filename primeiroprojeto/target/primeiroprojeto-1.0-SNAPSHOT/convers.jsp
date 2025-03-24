<%-- 
    Document   : convers
    Created on : 10 de jul. de 2024, 16:13:50
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            double dolar = Double.parseDouble(request.getParameter("dolar"));
            double real = dolar * 5.60;
            out.print("<center><h1>$"+dolar + "</h1></center>");
            out.print("<center><h1>R$"+real + "</h1></center>");
        %>
    </body>
</html>
