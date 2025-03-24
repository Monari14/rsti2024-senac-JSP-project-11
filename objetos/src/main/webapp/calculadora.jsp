<%-- 
    Document   : calculadora
    Created on : 18 de jul. de 2024, 16:19:29
    Author     : Administrador
--%>

<%@page import="com.mycompany.objetos.Calculadora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input {
                width:30px;
            }
        </style>
    </head>
    <body>
        <h3>Calculadora</h3>
        <form action="calculadora.jsp">
            <input type="text" name="valorA" id="valorA" required>
            <select name="operacao">
                <option value="mais">+</option>
                <option value="menos">-</option>
                <option value="vezes">x</option>
                <option value="divi">/</option>
            </select>            
            <input type="text" name="valorB" id="valorB" required>
            <input type="submit" value="=">

        </form>
        <%
        String valoA = request.getParameter("valorA");
        String valoB = request.getParameter("valorB");
        
        String operacao = request.getParameter("operacao");
        
        double valorA = Double.parseDouble(valoA);
        double valorB = Double.parseDouble(valoB);
        
        Calculadora c = new Calculadora(valorA, valorB);
        
        out.print("Valor A: " + c.getValorA() + "<br>Valor B: "+c.getValorB());

        if(operacao != null){
            switch (operacao){
                case "mais":
                    out.print(c.somar());
                    break;
                case "menos":
                    out.print(c.subtrair());
                    break;
                case "vezes":
                    out.print(c.multiplicar());
                    break;
                case "divi":
                    out.print(c.dividir());
                    break;
                }
            }        
        %>    
    </body>
</html>
