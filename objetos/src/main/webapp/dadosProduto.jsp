<%-- 
    Document   : dadosProduto
    Created on : 19 de jul. de 2024, 15:57:46
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados Produto</title>
    </head>
    <body>
        <form action="produto.jsp" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>
        
        <label for="valor">Valor:</label>
        <input type="text" id="valor" name="valor" required><br><br>
        
        <label for="lucro">Lucro:</label>
        <input type="text" id="lucro" name="lucro" required><br><br>
        
        <input type="submit" value="Enviar">

        </form>
    </body>
</html>