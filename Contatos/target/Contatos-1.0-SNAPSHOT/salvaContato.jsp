
<%@page import="com.mycompany.contatos.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        int idade = Integer.parseInt(request.getParameter("idade"));
        
        Contato c = new Contato();
        c.setNome(nome);
        c.setTelefone(telefone);
        c.setIdade(idade);
        
        if(c.salvar()){
        %>
        <h1>Contato add no banco</h1>
        <%
        }else{
        %>
        <h1>fudeo</h1>
        <%
        }
        %>
    </body>
</html>
