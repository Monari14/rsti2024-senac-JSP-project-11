<%-- 
    Document   : dadosFuncionario
    Created on : 18 de jul. de 2024, 13:53:05
    Author     : Administrador
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.mycompany.salarios.Salario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p {
               display: inline;
            }
            .p {
                color:red;
            }
            
            body {
                text-align: center;
            }
        </style>        
    </head>
    <body>
        <form action="salarioFuncionario.jsp">
            <label for="nome">Nome: </label>
            <input type="text" name="nome" id="nome" required>
            <br><br>
            <label for="dataEntrada">Data de Entrada: </label>
            <input type="date" name="dataEntrada" id="dataEntrada" required>
            <br><br>
            <label for="funcoes">Funções: </label>
            <select name="funcoes">
                <option value="Produção">Produção</option>
                <option value="Comercial">Comercial</option>
                <option value="Financeira">Financeira</option>
                <option value="Recursos Humanos">Recursos Humanos</option>
                <option value="Gerência">Gerência</option>
            </select>
            <br><br>
            <label for="qntHorasExtras">Quantidade de Horas Extras: </label>
            <input type="text" name="qntHorasExtras" id="qntHorasExtras" required>
            <br><br>
            <label for="mesReferencias">Mês de Referências: </label>
            <input type="month" name="mesReferencias" id="mesReferencias" required>
            <br><br>
            <label for="anoReferencias">Ano de Referência: </label>
            <input type="text" name="anoReferencias" id="anoReferencias" required>

            <br><br>
            <label for="utiliza">Utiliza:</label><br>
            <p>Vale Transporte</p>
            <input type="checkbox" name="utiliza1" value="Vale Transporte">
            <br>
            <p>Vale Alimentação</p>
            <input type="checkbox" name="utiliza2" value="Vale Alimentação">
            <br>
            <br>
            <label for="dependentes">Dependentes:</label>
            <input type="text" name="dependentes" id="dependentes">
            <br><br>
            <label for="possivelDescontos">Possível Descontos: </label>
            <input type="text" name="possivelDescontos" id="possivelDescontos">
            <br><br>
            <input type="submit" value="Enviar">
        </form>    
    </body>
</html>
