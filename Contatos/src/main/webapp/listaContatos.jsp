
<%@page import="com.mycompany.contatos.Contato"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Contatos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<center>
    <h2>Lista de Contatos</h2>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Idade</th>

        </tr>
        <%
            
            List<Contato> contatos = Contato.getAllContatos();
            for (Contato contato : contatos) {
        %>
        <tr>
            <td><%= contato.getId() %></td>
            <td><%= contato.getNome() %></td>
            <td><%= contato.getIdade() %> anos</td>
            <td><a href="editarContato.jsp?id=<%= contato.getId()%>">Editar</a></td>
            <td><a href="verContato.jsp?id=<%= contato.getId()%>">Ver</a></td>
            <td><a href="excluirContato.jsp?id=<%= contato.getId()%>">Excluir</a></td>
        </tr>
        <%
            }
        %>
    </table>
    <br>
        <a href="index.html">Voltar</a>
</center>
</body>
</html>