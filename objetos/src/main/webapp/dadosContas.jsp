<%-- 
    Document   : dadosContas
    Created on : 19 de jul. de 2024, 16:05:44
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
        <form action="contas.jsp" method="post">
        <label for="receitas">Receitas: </label>
        <input type="text" id="receitas" name="receitas" required><br><br>
        
        <label for="despesas">Valor:</label>
        <input type="text" id="despesas" name="despesas" required><br><br>

        <label for="mes">Mês: </label>
        <input type="month" id="mes" name="mes" required><br><br>
        
        <input type="submit" value="Enviar">

    </body>
</html>
