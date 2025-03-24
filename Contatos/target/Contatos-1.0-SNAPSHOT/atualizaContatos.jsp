<%@page import="com.mycompany.contatos.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Contatos</title>
    </head>
    <body>
        <h1></h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome");
            String telefone = request.getParameter("telefone");
            int idade = Integer.parseInt(request.getParameter("idade"));

            Contato contato = new Contato();
            contato.setId(id);
            contato.setNome(nome);
            contato.setTelefone(telefone);
            contato.setIdade(idade);

            
            if (contato.atualizar()) {
                out.println("Contato salvo com sucesso!");
            } else {
                out.println("Erro ao salvar contato.");
            }
        %>
        <a href="listaContatos.jsp">Voltar</a>
    </body>
</html>