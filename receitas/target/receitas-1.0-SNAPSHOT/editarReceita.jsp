<%-- 
    Document   : editarReceita
    Created on : 2 de ago. de 2024, 16:34:40
    Author     : Administrador
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.receitas.Receita"%>
<%@page import="com.mycompany.receitas.Receita"%>
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
                    List<Receita> receitas = Receita.getReceita(
                        id
                    );
                    for (Receita receita : receitas) {
            %>
            <center>
                <h2>Crie uma receita</h2>
                    <form action="atualizaReceitas.jsp" method="POST">
                        <input type="hidden" name="id" id="id" value=" <%= receita.getId() %>" required>
                        <label for="nome">Nome da Receita: </label>
                        <input type="text" name="nome" id="nome" value=" <%= receita.getNome() %>" required>
                        <br><br>
                        <label for="descricao">Descrição da Receita: </label>
                        <input type="text" name="descricao" id="descricao" value="<%= receita.getDescricao() %>" required>
                        <br><br>
                        <label for="tempoPreparo">Tempo de Preparo: </label>
                        <input type="number" name="tempoPreparo" id="tempoPreparo" value="<%= receita.getTempoPreparo() %>" required>
                        <br><br>
                        <label for="porcoes">Porções: </label>
                        <input type="number" name="porcoes" id="porcoes" value="<%= receita.getPorcoes() %>" required>
                        <br><br>
                        <label for="ingredientes">Ingredientes: </label>
                        <input type="text" name="ingredientes" id="ingredientes" value="<%= receita.getIngredientes() %>" required>
                        <br><br>
                        <label for="preparo">Preparo: </label>
                        <input type="text" name="preparo" id="preparo" value="<%= receita.getPreparo() %>" required>
                        <br><br>
                        <input type="submit" value="Enviar">
                    </form>
            <%
                    }
                }
            %>
            <br>
            <a href="listaReceitas.jsp">Lista de Receitas</a>
        </center>
    </body>
</html>
