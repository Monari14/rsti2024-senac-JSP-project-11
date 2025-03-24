<%-- 
    Document   : index
    Created on : 24 de jul. de 2024, 14:12:56
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
        <p>Sou uma página em JAVA WEB!</p>
        <%
            /*
        Conta nC = new Conta(14, "Felipe Eduardo Monari", "Ytaw");
        out.print(
                "Número: " + nC.getNumero() +
                "<br>Nome: " + nC.getNomePessoa() +
                "<br>Banco: " + nC.getBanco()
        );
        nC.numero = 69;
        nC.setNomePessoa("Helicopetero the Combat");
        nC.setBanco("Banko do Brazil");
        out.print(
                "<br><br>Número: " + nC.getNumero() +
                "<br>Nome: " + nC.getNomePessoa() +
                "<br>Banco: " + nC.getBanco()
        );
        Conta nnC = new Conta(1, "Monari Felipe", "Banco");
        out.print(
                "<br><br>Número: " + nnC.getNumero() +
                "<br>Nome: " + nnC.getNomePessoa() +
                "<br>Banco: " + nnC.getBanco()
        );
        nC.deposito(150.00);
        nC.deposito(200.00);
        out.print(nC.imprimirSaldo());
        out.print("<br>" + nC.imprimirSaldo());
        nC.saque(200.00);
        out.print("<br>" + nC.imprimirSaldo());
        */
        %>
        <br><br>
        <a href="listas.jsp">LISTAS</a>
        <h1><a href="cadastraconta.jsp">Cadastra Conta</a></h1>

    </body>
</html>
