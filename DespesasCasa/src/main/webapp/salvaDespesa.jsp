
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.mycompany.despesascasa.Despesas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
        <%
        String data = request.getParameter("data");
        String categoria = request.getParameter("categoria");
        String descricao = request.getParameter("descricao");
        String local = request.getParameter("local");
        String valor = request.getParameter("valor");
        String parcelas = request.getParameter("parcelas");
        

        
        
        if(
            data != null && 
            categoria != null && 
            descricao != null && 
            local != null && 
            valor != null && 
            parcelas != null
        ){
        Despesas d = new Despesas();
        d.setData(data);
        d.setCategoria(categoria);
        d.setDescricao(descricao);
        d.setLocal(local);
        
        double valorD = Double.parseDouble(valor);
        d.setValor(valorD);
        int parcelasI = Integer.parseInt(parcelas);
        d.setParcelas(parcelasI);
        
        out.print(d.imprimir());
        
        }

        %>
        </h1>
    </body>
</html>
