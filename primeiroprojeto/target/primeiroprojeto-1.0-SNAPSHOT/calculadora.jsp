<%-- 
    Document   : calculadora
    Created on : 17 de jul. de 2024, 13:36:34
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
        String valor1 = request.getParameter("valor1");
        String valor2 = request.getParameter("valor2");
        String operacao = request.getParameter("operacao");
        %>
         <form action="calculadora.jsp" method="post">
             <input type="text" id="valor1" name="valor1" size="3" value="<% if (valor1 !=null) { out.print(valor1); } %>" required>
            <select name="operacao">
                <option value="somar" <% if (operacao != null && operacao.equals("somar")) { out.print("selected"); } %>>+</option>
                <option value="subtrair" <% if (operacao != null && operacao.equals("subtrair")) { out.print("selected"); } %>>-</option>
                <option value="multiplicar" <% if (operacao != null && operacao.equals("multiplicar")) { out.print("selected"); } %>>x</option>
                <option value="dividir" <% if (operacao != null && operacao.equals("dividir")) { out.print("selected"); } %>>/</option>
            </select>
        <input type="text" id="valor2" name="valor2" size="3" value="<% if (valor2 !=null) { out.print(valor2); } %>" required>
        <input type="submit" value="=">
    </form>
        
        <%
        Double val1=0.0; 
        Double val2=0.0;
        Double resultado = 0.0;
        
        if (valor1 != null && !valor1.isEmpty()) {  //Verifica se o campo valor1 foi enviado e não está vazio
        valor1 = valor1.replace(",", ".");
        val1 = Double.parseDouble(valor1);
            }
            
        if (valor2 != null && !valor2.isEmpty()) {  //Verifica se o campo valor2 foi enviado e não está vazio
        valor2 = valor2.replace(",", ".");
        val2 = Double.parseDouble(valor2);
            }
            
         if(operacao != null){
            switch (operacao){
                case "somar":
                    resultado = val1 + val2;
                    out.println(String.format("%.2f", resultado));
                    break;
                case "subtrair":
                    resultado = val1 - val2;
                    out.println(String.format("%.2f", resultado));
                    break;
                case "multiplicar":
                    resultado = val1 * val2;
                    out.println(String.format("%.2f", resultado));
                    break;
                case "dividir":
                    if (val2==0) {
                    resultado = 0.0;
                    }else{
                        resultado = val1 / val2;
                    }
                    out.println(String.format("%.2f", resultado));
                    break;
                }
            }
        %>
    </body>
</html>