
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastra Receita</title>
    <link rel="stylesheet" href="style.css">
    <style>
        input {
            font-size: 16pt;
        }
        label {
            font-size: 16pt;
        }
    </style>
    </head>
    <body>
    <center>
        <h2>Crie uma receita</h2>
        <form action="salvaReceitas.jsp" method="POST">
            <label for="nome">Nome da Receita: </label>
            <input type="text" name="nome" id="nome" required>
            <br><br>
            <label for="descricao">Descrição da Receita: </label>
            <input type="text" name="descricao" id="descricao" required>
            <br><br>
            <label for="tempoPreparo">Tempo de Preparo: </label>
            <input type="number" name="tempoPreparo" id="tempoPreparo" required>
            <br><br>
            <label for="porcoes">Porções: </label>
            <input type="number" name="porcoes" id="porcoes" required>
            <br><br>
            <label for="ingredientes">Ingredientes: </label>
            <input type="text" name="ingredientes" id="ingredientes" required>
            <br><br>
            <label for="preparo">Preparo: </label>
            <input type="text" name="preparo" id="preparo" required>
            <br><br>
            <input type="submit" value="Enviar">
        </form>
        <br>
        <a href="listaReceitas.jsp">Lista de Receitas</a>
    </center>
    </body>
</html>
