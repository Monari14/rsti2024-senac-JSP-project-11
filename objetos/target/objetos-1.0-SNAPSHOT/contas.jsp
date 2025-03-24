<%-- 
    Document   : contas
    Created on : 19 de jul. de 2024, 16:07:58
    Author     : Administrador
--%>

<%@page import="com.mycompany.objetos.Contas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String receitas = request.getParameter("receitas");
        
        String despesas = request.getParameter("despesas");
                
        String mes = request.getParameter("mes");
        
        Contas c = new Contas();
        c.setReceitas(receitas);
        c.setDespesas(despesas);
        c.setMes(mes);
        out.print(c.mostrar());
        %>
    </body>
</html>
