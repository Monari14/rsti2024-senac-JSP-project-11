<%-- 
    Document   : contarF
    Created on : 4 de jul. de 2024, 16:13:28
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>10 with For</h1>
            <%
                for(int i = 1; i <= 10; i++){
                    out.print(i + "<br>");
                }
            %>    
        <a href="index.jsp">Voltar</a>
    </body>
</html>
