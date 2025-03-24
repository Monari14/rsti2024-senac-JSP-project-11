<%-- 
    Document   : calcularContas
    Created on : 10 de jul. de 2024, 13:53:40
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
           <%
           float salario = Float.parseFloat(request.getParameter("salario"));
           float valorExtra = Float.parseFloat(request.getParameter("valorExtra"));
           float aluguel = Float.parseFloat(request.getParameter("aluguel"));
           float alimentacao = Float.parseFloat(request.getParameter("alimentacao"));
           float educacao = Float.parseFloat(request.getParameter("educacao"));
           float outros = Float.parseFloat(request.getParameter("outros"));
           float somaReceitas = salario + valorExtra;
           float somaDespesas = aluguel + alimentacao + educacao + outros;
           float valorFinal = somaReceitas - somaDespesas;
           out.print("<h1>Receitas</h1>");
           out.print(
                    "<h2>Salário: " + salario + 
                    "<br>Valor Extra: " + valorExtra + "</h2>");
            
           out.print("<h1>Despesas</h1>");
           out.print(
                    "<h2>Aluguel: " + aluguel + 
                    "<br>Alimentação: " + alimentacao + 
                    "<br>Educação: " + educacao +
                    "<br>Outros: " + outros + "</h2>"
           );
           out.print("<h1>Soma das Receitas: " + somaReceitas + "</h1>");
           out.print("<h1>Soma das Despesas: " + somaDespesas + "</h1>");
           out.print("<h1>Valor Final: " + valorFinal + "</h1>");
            float perc = ((somaDespesas / somaReceitas) * 100);
            out.print("<h1>Porcentagem Gasta: " + perc + "%<br>");
            if(perc > 90) {
             out.print("PROCURE ECONOMIZAR");
            }else if(perc < 89 && perc >75){
             out.print("CONTINUE ASSIM");
            }else if(perc < 75) {
             out.print("PARABÉNS, VOCÊ CONSEGUIU ECONOMIZAR");
            }
           out.print("</h1");
           
        %>

    </body>
</html>
