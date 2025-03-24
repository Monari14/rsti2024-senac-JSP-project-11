
<%@page import="com.mycompany.receitas.Receita"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Receita</title>
        <link rel="stylesheet" href="style.css">
        <style>
            div {
                padding: 5px 10px;
                text-align: left;
                font-size: 16pt;
            }
            .qd {
                max-width: 20%;
                background-color: #e5e5e5;
                border-radius: 20px;
            }
        </style>
    </head>
    <body>
        <center>            
            <%
                String idS = request.getParameter("id");
                if (!idS.isEmpty()) {
                    int id = Integer.parseInt(idS);
                    List<Receita> receitas = Receita.getReceita(id);
                    for (Receita receita : receitas) {
            %>
            
            <h2>Receita n°<%= receita.getId()%> - <%= receita.getNome()%></h2>
            <div class="qd">
                    <div>Receita: <%= receita.getNome()%></div>
                    <div>Descrição: <%= receita.getDescricao()%></div>
                    <div>Porções: <%= receita.getPorcoes()%> - Tempo: <%= receita.getTempoPreparo()%> min</div>
                    <div>Ingredientes: <%= receita.getIngredientes()%></div>
                    <div>Modo de fazer: <%= receita.getPreparo()%></div>
            <%
                    }
                }
            %>
            </div>
            <br>
            <a href="listaContatos.jsp">Voltar</a>
        </center>    
    </body>
</html>
