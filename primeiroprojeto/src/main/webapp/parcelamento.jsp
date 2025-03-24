<%-- 
    Document   : parcelamento
    Created on : 17 de jul. de 2024, 14:59:29
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parcelamento</title>
    </head>
    <body>
        <form action="parcelas.jsp">
            <label for="nome">Nome: </label>
            <input type="text" name="nome" id="nome" required>
            <br><br>
            <label for="valor">Valor:</label>
            <input type="text" name="valor" id="valor" required>
            <br><br>
            <label for="parcelas">Parcelas:</label>
            <input type="text" name="parcelas" id="parcelas">
            <br><br>
            <label for="juros">Taxa de Juros:</label>
            <input type="text" name="juros" id="juros">
            <br><br>
            <input type="submit" value="Pagar">
        </form>    
    </body>
</html>
