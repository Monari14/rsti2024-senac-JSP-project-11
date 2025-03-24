<%-- 
    Document   : parcelas
    Created on : 17 de jul. de 2024, 15:04:16
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parcelas</title>
    </head>
    <body>
        <%
        String nome = request.getParameter("nome");
        Double valor = Double.parseDouble(request.getParameter("valor"));
        String parcel = request.getParameter("parcelas");
        Double parcelas = Double.parseDouble(parcel);;
        
        String juro = request.getParameter("juros");
        Double juros = Double.parseDouble(juro);
        
        Double jurs = juros / 100;
        
        Double pj = jurs * valor;
        
        Double soma = pj + valor;
        Double numeroParcela = 0.0;
        if(parcel == null){
            numeroParcela += 1.0;
        }else {
            numeroParcela +=parcelas;
        }
        Double valorParcela = soma / numeroParcela;
        out.print(nome+": R$" + soma + " Parcelas: "+numeroParcela);
        for(int i = 1; i <= numeroParcela; i++){
            out.print("<br>Parcela "+i+": R$"+String.format("%.2f", valorParcela));
        }
        %>
    </body>
</html>
