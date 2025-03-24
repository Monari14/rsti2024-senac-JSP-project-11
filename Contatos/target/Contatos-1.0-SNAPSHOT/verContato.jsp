
<%@page import="com.mycompany.contatos.Contato"%>
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
                    List<Contato> contatos = Contato.getContato(id);
                    for (Contato contato : contatos) {
            %>
            
            <h2>Contato n°<%= contato.getId()%> - <%= contato.getNome()%></h2>
            <div class="qd">
                    <div>Nome: <%= contato.getNome()%></div>
                    <div>Telefone: <%= contato.getTelefone()%></div>
                    <div>Idade: <%= contato.getIdade()%> anos</div>
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
