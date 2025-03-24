<%-- 
    Document   : salarioFuncionario
    Created on : 18 de jul. de 2024, 14:35:06
    Author     : Administrador
--%>

<%@page import="com.mycompany.salarios.Salario"%>
<%@page import="com.mycompany.salarios.Salario"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String nome = request.getParameter("nome");
        
        String dataEntrada = request.getParameter("dataEntrada");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dataentrada = sdf.parse(dataEntrada);
        
        Calendar dataAtual = Calendar.getInstance();
    
        Calendar dataEntradaCal = Calendar.getInstance();
        dataEntradaCal.setTime(dataentrada);
    
        int anoAtual = dataAtual.get(Calendar.YEAR);
        int anoNascimento = dataEntradaCal.get(Calendar.YEAR);
        int idade = anoAtual - anoNascimento;

        String funcoes = request.getParameter("funcoes");
        
        String qntHorasExtras = request.getParameter("qntHorasExtras");

        String mesReferencias = request.getParameter("mesReferencias");
        
        String anoReferencias = request.getParameter("anoReferencias");
        
        String utiliza1 = request.getParameter("utiliza1");
        String utiliza2 = request.getParameter("utiliza2");
        
        String dependentes = request.getParameter("dependentes");

        String possivelDescontos = request.getParameter("possivelDescontos");
        
        Salario s = new Salario();
        s.setNome(nome);
        s.setDataEntrada(dataEntrada);
        s.setFuncoes(funcoes);
        s.setQntHorasExtras(qntHorasExtras);
        s.setMesReferencias(mesReferencias);
        s.setAnoReferencias(anoReferencias);
        s.setUtiliza1(utiliza1);
        s.setUtiliza2(utiliza2);
        s.setPossivelDescontos(possivelDescontos);
        s.setDependentes(dependentes);
        s.setIdade(idade);
        s.setUti1(utiliza1);
        s.setUti2(utiliza2);
        out.print(s.mostra());
        %>
    </body>
</html>
