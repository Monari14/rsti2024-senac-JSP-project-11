<%@page import="com.mycompany.receitas.Receita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Receitas</title>
            <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <h1>Excluir Receitas</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));

            Receita r = new Receita();
            r.setId(id);
            %>
            <h1>
            <%
            if (r.deletar()) {
                out.println("Receita excluida com sucesso!");
            } else {
                out.println("Erro ao excluir receita.");
            }
            %>
            </h1>
        <a href="listaReceitas.jsp">Voltar</a>
    </body>
</html>