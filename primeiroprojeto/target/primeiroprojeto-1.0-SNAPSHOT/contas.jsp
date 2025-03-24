<%-- 
    Document   : contas
    Created on : 10 de jul. de 2024, 13:42:28
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
    body {
        text-align: center;
    }
</style>
    </head>
    <body>
        <h1>Contas</h1>
        <div class="cf">
            <form action="calcularContas.jsp" method="post">
                <h2>Receitas</h2>
                <label for="salario">Salário: </label>
                <input type="number" name="salario">
                <br>
                <label for="valorExtra">Valor Extra: </label>
                <input type="number" name="valorExtra">
                <h2>Despesas:</h2>
                <label for="aluguel">Aluguel: </label>
                <input type="number" name="aluguel">
                <br>
                <label for="alimentacao">Alimentação: </label>
                <input type="number" name="alimentacao">
                <br>
                <label for="educacao">Educação: </label>
                <input type="number" name="educacao">
                <br>
                <label for="outros">Outros: </label>
                <input type="number" name="outros">
                <br><br>
                <input type="submit">
            </form>
        </div>
    </body>
</html>
