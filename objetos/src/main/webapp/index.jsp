<%-- 
    Document   : index
    Created on : 18 de jul. de 2024, 14:37:14
    Author     : Administrador
--%>

<%@page import="com.mycompany.objetos.Calculadora"%>
<%@page import="com.mycompany.objetos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
       <h3>Usuário!</h3>
       <%
            Usuario u = new Usuario("Felipe Eduardo Monari", 16);
            u.setSexo("Neto");
            out.print("<p><strong>Nome: </strong>" + u.getNome() + "</p>");
            out.print("<p><strong>Idade: </strong>" + u.getIdade() + "</p>");
            out.print("<p><strong>Sexo: </strong>Macho</p>");
            u.setNome("Hercio");
            out.print(u.imprimir());
        %>
        
        <a href="calculadora.jsp">Calculadora</a>
        <a href="dadosProduto.jsp">Dados Produto</a>
        <a href="dadosContas.jsp">Dados Contas</a>

    </body>
</html>
