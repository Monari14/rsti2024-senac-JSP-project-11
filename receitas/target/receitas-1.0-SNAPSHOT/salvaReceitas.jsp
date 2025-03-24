
<%@page import="com.mycompany.receitas.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <%
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        String tempoPreparo = request.getParameter("tempoPreparo");
        String porcoes = request.getParameter("porcoes");
        String ingredientes = request.getParameter("ingredientes");
        String preparo = request.getParameter("preparo");
        
        if(
        nome != null && descricao != null && tempoPreparo != null && 
        porcoes != null && ingredientes != null && preparo != null
        ){
            Receita r = new Receita();
            r.setNome(nome);
            r.setDescricao(descricao);
            r.setIngredientes(ingredientes);
            r.setPreparo(preparo);

            int tempoPreparoI = Integer.parseInt(tempoPreparo);
            int porcoesI = Integer.parseInt(porcoes);

            r.setTempoPreparo(tempoPreparoI);
            r.setPorcoes(porcoesI);
            
            if(r.salvar()){
                out.print("<br><h1>DADOS SALVOS NO BANCO!");
            %>
            <br>
            <a href="listaReceitas.jsp">Lista de Receitas</a>
            <br>
            <a href="cadastraReceita.jsp">Nova receita</a>

            <%
            }else{
                out.print("<br>fudeo!</h1>");
            }
        }
        %>
    </center>
    </body>
</html>
