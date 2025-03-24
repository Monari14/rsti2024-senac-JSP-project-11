
<%@page import="com.mycompany.despesascasa.Despesas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>
        <form action="salvaDespesa.jsp" method="POST">
            <label for="data">Data: </label>
            <input type="date" name="data" id="data" required>
            <br><br>
            <label for="categoria">Categoria: </label>
            <input type="text" name="categoria" id="categoria" required>
            <br><br>
            <label for="descricao">Descrição: </label>
            <input type="text" name="descricao" id="descricao" required>
            <br><br>
            <label for="local">Local: </label>
            <input type="text" name="local" id="local" required>
            <br><br>
            <label for="valor">Valor: </label>
            <input type="text" name="valor" id="valor" required>
            <br><br>
            <label for="parcelas">Parcelas: </label>
            <input type="number" name="parcelas" id="parcelas" required>
            <br><br>
            <input type="submit" value="Enviar">
        </form>   
    </h3>
    </body>
</html>
