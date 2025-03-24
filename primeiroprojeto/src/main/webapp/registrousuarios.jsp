<%-- 
    Document   : registrousuarios
    Created on : 10 de jul. de 2024, 16:18:48
    Author     : Administrador
--%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p {
               display: inline;
            }
        </style>
    </head>
    <body>
        <%
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        
        String genero = request.getParameter("genero");
        String paisOrigem = request.getParameter("paisOrigem");
        String dataNasc = request.getParameter("dataNasc");
        String interesses1 = request.getParameter("interesses1");
        String interesses2 = request.getParameter("interesses2");
        String interesses3 = request.getParameter("interesses3");
        String interesses4 = request.getParameter("interesses4");
        String mensagem = request.getParameter("mensagem");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dataNascimento = sdf.parse(dataNasc);
        
        Calendar dataAtual = Calendar.getInstance();
    
        Calendar dataNascimentoCal = Calendar.getInstance();
        dataNascimentoCal.setTime(dataNascimento);
    
        int anoAtual = dataAtual.get(Calendar.YEAR);
        int anoNascimento = dataNascimentoCal.get(Calendar.YEAR);
        int idade = anoAtual - anoNascimento;
    
        if(idade < 18){
        out.print("<center><h1 class='p'>ERRO<br>O usuário deve ter pelo menos 18 anos</h1></center>");
        }else{
        out.print("Nome Completo | "+ nome+ " |<br>");
        out.print("E-mail | "+ email + " |<br>");
        out.print("Data de Nascimento | "+ dataNasc + " | - Idade | " + idade + " |<br>");
        out.print("Gênero | "+ genero + " |<br>");
        out.print("País de Origem | "+ paisOrigem + " |<br>");
        out.print("Interesses | ");
        if (interesses1 == null) { out.print(""); }else{out.print(interesses1 + " ");}
        if (interesses2 == null) { out.print(""); }else{out.print(interesses2 + " ");}
        if (interesses3 == null) { out.print(""); }else{out.print(interesses3 + " ");}
        if (interesses4 == null) { out.print(""); }else{out.print(interesses4 + " ");}
        out.print(" |<br>");

        out.print("Biografia | " + mensagem + " |<br>");
        }

%>
    </body>
</html>
