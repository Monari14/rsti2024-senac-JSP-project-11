<%-- 
    Document   : listas
    Created on : 24 de jul. de 2024, 15:48:11
    Author     : Administrador
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Criar um ArrayList</h1>
        <%
            ArrayList<String> nomes = new ArrayList<>();
            nomes.add("Felipe");
            nomes.add("Eduardo");
            nomes.add("Monari");
            nomes.add("Remover");
            out.println("Tamanho da lista: " + nomes.size() + "<br><br>");
            out.print("Elementos da lista: ");
            for(String nome : nomes){
                out.print("<br>" + nome);
            }
            
            String nomeBusca = "Eduardo";
            
            if(nomes.contains(nomeBusca)){
                out.print("<p>" + nomeBusca + " está na lista!</p>");
            }else{
                out.print("<p>" + nomeBusca + " não está na lista!</p>");
            }
            
            nomes.remove("Remover");
            out.print("Lista Atualizada: ");
            for(String nome : nomes){
                out.print("<br>" + nome);
            }

        %>
    </body>
</html>
