<%-- 
    Document   : contacadastrada
    Created on : 24 de jul. de 2024, 16:06:21
    Author     : Administrador
--%>

<%@page import="com.mycompany.contabancaria.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <%
               
        String nome = request.getParameter("nome");
        String banco = request.getParameter("banco");
        String numero = request.getParameter("numero");
        if(nome != null && banco != null && numero != null){
        int nConta = Integer.parseInt(numero);
            Conta c = new Conta();
            c.setNumero(nConta);
            c.setNomePessoa(nome);
            c.setBanco(banco);
            out.print("<center><h3>Banco " + c.getBanco() + "</h3>");
            out.print("<h1>Olá "+ c.getNomePessoa() + "!</h1>");
            out.print("<h2>Saldo: R$"+ c.imprimirSaldo() + "</h2>");
            out.print("<h2>Limite: R$" + c.imprimirLimite() + "</h2></center>");
        }
        %>
        <center>
        <form action="operacao.jsp"> 
            <label for="sacar">Sacar: </label>
            <input type="text" name="sacar" id="sacar">
            <input type="submit" value="Sacar">   
        </form>
            <br>
        <form action="operacao.jsp">
            <label for="depositar">Depositar: </label>
            <input type="text" name="depositar" id="depositar"> 
            <input type="submit" value="Depositar">   
        </form>
        </center>
        
    </body>
</html>
