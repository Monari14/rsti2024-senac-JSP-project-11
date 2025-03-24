<%-- 
    Document   : registrousu
    Created on : 10 de jul. de 2024, 16:47:46
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
            String nome = request.getParameter("nomeCompleto");

        %>
    </body>
</html>


Nome completo
E-mail
Data de nascimento
Gênero (opções: Masculino, Feminino, Outro)
País de origem (opções: Brasil, Estados Unidos, Canadá, Outro)
Interesses (checkboxes com opções como Esportes, Música, Tecnologia,
Viagens)
Biografia (textarea para que o usuário possa descrever um pouco sobre si
mesmo)