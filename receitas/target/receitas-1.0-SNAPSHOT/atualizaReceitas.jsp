<%@page import="com.mycompany.receitas.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Receitas</title>
    </head>
    <body>
        <%
            String idS = request.getParameter("id");
            int id = Integer.parseInt(idS);
            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            int tempoPreparo = Integer.parseInt(request.getParameter("tempoPreparo"));
            int porcoes = Integer.parseInt(request.getParameter("porcoes"));
            String ingredientes = request.getParameter("ingredientes");
            String preparo = request.getParameter("preparo");

            Receita receita = new Receita();
            receita.setId(id);
            receita.setNome(nome);
            receita.setDescricao(descricao);
            receita.setTempoPreparo(tempoPreparo);
            receita.setPorcoes(porcoes);
            receita.setIngredientes(ingredientes);
            receita.setPreparo(preparo);

            if (receita.atualizar()) {
                out.println("Receita salva com sucesso!");
            } else {
                out.println("Erro ao salvar receita.");
            }
        %>
        <a href="listaReceitas.jsp">Voltar</a>
    </body>
</html>