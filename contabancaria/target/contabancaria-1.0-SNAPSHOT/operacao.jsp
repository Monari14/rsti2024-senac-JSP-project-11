<%-- 
    Document   : sacar
    Created on : 24 de jul. de 2024, 16:43:46
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
            Conta c = new Conta();

            String valorStringSacar = request.getParameter("sacar");
            String valorStringDepositar = request.getParameter("depositar");
            if (valorStringSacar != null && valorStringDepositar == null) {
                double valorSaque = Double.parseDouble(valorStringSacar);
                c.saque(valorSaque);
                out.print("Saque de R$" + valorSaque + " efetuado!");
            }
            if (valorStringDepositar != null && valorStringSacar == null) {
                double valorDeposito = Double.parseDouble(valorStringDepositar);
                c.deposito(valorDeposito);
                out.print("Depósito de R$" + valorDeposito + " efetuado!");
            }
                        out.print("<center><h3>Banco " + c.getBanco() + "</h3>");
            out.print("<h1>Olá " + c.getNomePessoa() + "!</h1>");
            out.print("<h2>Saldo: R$" + c.imprimirSaldo() + "</h2>");
            out.print("<h2>Limite: R$" + c.imprimirLimite() + "</h2></center>");

        %>    </body>
</html>
