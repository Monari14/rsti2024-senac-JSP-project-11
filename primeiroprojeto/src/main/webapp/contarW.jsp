<%-- 
    Document   : contarW
    Created on : 4 de jul. de 2024, 16:10:57
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
        <h1>10 with While</h1>
            <%
                int contador = 1;
                while(contador <= 10){
                out.print(contador + "<br>");
                    contador++;         
                }
            %>
            
            
            
            <a href="index.jsp">Voltar</a>
    </body>
</html>
