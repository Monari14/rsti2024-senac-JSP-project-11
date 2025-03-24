<%-- 
    Document   : cadastraconta
    Created on : 24 de jul. de 2024, 16:00:25
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

        <form action="contacadastrada.jsp" method="post">
            <label for="nome">Nome: </label>
            <input type="text" name="nome" id="nome" required>
            <br><br>
            <label for="banco">Banco: </label>
            <input type="text" name="banco" id="banco" required> 
            <br><br>
            <label for="numero">Número: </label>
            <input type="text" name="numero" id="numero" required> 
            <br><br>
            <input type="submit" value="Cadastrar">
        </form>

    </body>
</html>
