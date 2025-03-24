
<%@page import="java.util.List"%>
<%@page import="com.mycompany.receitas.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Receitas</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<center>
    <h2>Lista de Receitas</h2>
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Tempo de Preparo</th>

        </tr>
        <%
            
            List<Receita> receitas = Receita.getAllReceitas();
            for (Receita receita : receitas) {
        %>
        <tr>
            <td><%= receita.getId() %></td>
            <td><%= receita.getNome() %></td>
            <td><%= receita.getDescricao() %></td>
            <td><%= receita.getTempoPreparo() %> min</td>
            <td><a href="editarReceita.jsp?id=<%= receita.getId()%>">Editar</a></td>
            <td><a href="verReceita.jsp?id=<%= receita.getId()%>">Ver</a></td>
            <td><a href="excluirReceita.jsp?id=<%= receita.getId()%>">Excluir</a></td>
        </tr>
        <%
            }
        %>
    </table>
    <br>
        <a href="cadastraReceita.jsp">Voltar</a>
</center>
</body>
</html>