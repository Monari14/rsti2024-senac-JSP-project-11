<%@page import="com.mycompany.contatos.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Contato</title>
            <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <h1>Excluir Receitas</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));

            Contato c = new Contato();
            c.setId(id);
            %>
            <h1>
            <%
            if (c.deletar()) {
                out.println("Contato excluído com sucesso!");
            } else {
                out.println("Erro ao excluir contato.");
            }
            %>
            </h1>
        <a href="listaContatos.jsp">Voltar</a>
    </body>
</html>