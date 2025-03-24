<%-- 
    Document   : produto
    Created on : 19 de jul. de 2024, 15:54:53
    Author     : Administrador
--%>

<%@page import="com.mycompany.objetos.Produto"%>
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
            String valorS = request.getParameter("valor");
            String lucroS = request.getParameter("lucro");
            double valor = Double.parseDouble(valorS);
            double lucro = Double.parseDouble(lucroS);
            Produto p = new Produto();
            p.setNome(nome);
            p.setValorProduto(valor);
            p.setLucro(lucro);
        %>
        <h3>Nome do produto: <%= p.getNome() %></h3>
        Valor do produto: <%= p.getValorProduto() %><br>
        Lucro: <%= p.getLucro() %><br>
        Valor de venda: <%= p.getValorVenda() %>
        
    </body>
</html>
