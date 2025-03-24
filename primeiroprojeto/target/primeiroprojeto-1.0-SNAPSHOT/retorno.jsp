<%-- 
    Document   : retorno
    Created on : 4 de jul. de 2024, 17:05:31
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
        <h1>Dados do Formulário</h1>
        <%
            String nome = request.getParameter("nome");
            out.print("Olá " + nome);
        %>
    </body>
</html>
