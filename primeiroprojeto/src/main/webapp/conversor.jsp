<%-- 
    Document   : calculadora
    Created on : 11 de jul. de 2024, 14:27:47
    Author     : Administrador
--%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
        <%
        String valor = request.getParameter("valor");
        %>
         <form action="conversor.jsp" method="post">
             <input type="text" id="valor" name="valor" size="3" value="<% if (valor !=null) { out.print(valor); } %>" required>
        <input type="submit" value="Converter">
    </form>
        
        <%
        Double val = 0.0; 
        
        if (valor != null && !valor.isEmpty()) {  //Verifica se o campo valor1 foi enviado e não está vazio
            valor = valor.replace(",", ".");
            val = Double.parseDouble(valor);
        }
        Double resultado = val * 5.60;

        out.println("R$"+String.format("%.2f", resultado));
        %>
    </body>
</html>