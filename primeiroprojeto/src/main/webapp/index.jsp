<%-- 
    Document   : index
    Created on : 4 de jul. de 2024, 15:55:24
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
        <h1>Hello World!</h1>
        <p>Sou uma página em JAVA WEB!</p>
            <%
                String nome = "Felipe Eduardo Monari";
                int idade = 16;
                out.print("Nome: " + nome + "<br>Idade: " + idade + " anos");
            %>
        <!-- Criar um arquivo chamado contarW.jsp e fazer um laço de repetição while para contar até 10. -->
        <br>
        <a href="contarW.jsp">Contar até 10 com While</a><br>
        <!-- Criar um arquivo chamado contarF.jsp e fazer um laço de repetição for para contar até 10. -->
        <a href="contarF.jsp">Contar até 10 com For</a><br>
        
        <a href="form.jsp">Formulário</a><br>
        
        <a href="informanumero.jsp">Informa Número</a><br>
        
        <a href="contas.jsp">Contas</a><br>
        <a href="calculadora.jsp">Calculadora</a><br>
        <a href="conversor.jsp">Conversor</a><br>
        <a href="registrousuario.jsp">Registro Usuários</a><br>
        <a href="parcelamento.jsp">Parcelamento</a><br>

    </body>
</html>
