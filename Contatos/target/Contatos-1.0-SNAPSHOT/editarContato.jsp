<%-- 
    Document   : editarReceita
    Created on : 2 de ago. de 2024, 16:34:40
    Author     : Administrador
--%>

<%@page import="com.mycompany.contatos.Contato"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastra Receita</title>
    <link rel="stylesheet" href="style.css">
    <style>
        input {
            font-size: 16pt;
        }
        label {
            font-size: 16pt;
        }
    </style>
    </head>
    <body>
                    <%
                String idS = request.getParameter("id");
                if (
                    !idS.isEmpty()
                ) {
                    int id = Integer.parseInt(idS);
                    List<Contato> contatos = Contato.getContato(
                        id
                    );
                    for (Contato contato : contatos) {
            %>
            <center>
                <h2>Atualize o contato n° <%= contato.getId()%></h2>
                    <form action="atualizaContatos.jsp" method="POST">
                        <input type="hidden" name="id" id="id" value=" <%= contato.getId() %>">
                        <label for="nome">Nome do Contato: </label>
                        <input type="text" name="nome" id="nome" value=" <%= contato.getNome() %>" required>
                        <br><br>
                        <label for="telefone">Telefone: </label>
                        <input type="text" name="telefone" id="telefone" value="<%= contato.getTelefone() %>" required>
                        <br><br>
                        <label for="idade">Idade: </label>
                        <input type="text" name="idade" id="idade" value="<%= contato.getIdade() %>" required>
                        <br><br>
                        <input type="submit" value="Enviar">
                    </form>
            <%
                    }
                }
            %>
            <br>
            <a href="listaContatos.jsp">Voltar</a>
        </center>
    </body>
</html>
