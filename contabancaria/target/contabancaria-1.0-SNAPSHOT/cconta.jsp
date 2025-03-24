 
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.contabancaria.Conta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Criando contas:</h1>
 
        <form action="cconta.jsp" method="post">
            
            <label for="numero">Número conta: </label>
                <input type="text" id="numero" name="numero" value="">
            </label>
            <label for="nomePessoa">Nome correntista: </label>
                <input type="text" id="nomePessoa" name="nomePessoa" value="">
            </label>
            <label for="banco">Banco: </label>
                <input type="text" id="banco" name="banco" value="">
            </label>
            <input type="submit" value="Enviar">
            
        </form>
        <%
            
        ArrayList<Conta> contas = (ArrayList<Conta>) session.getAttribute("contas");
        if (contas == null) {
            contas = new ArrayList<>();
            session.setAttribute("contas", contas);
        }
            
            String numeroS = request.getParameter("numero");         
            String nomePessoa = request.getParameter("nomePessoa");
            String banco = request.getParameter("banco");
        
    
 
    if (numeroS != null && !numeroS.isEmpty()) {
            int numero = Integer.parseInt(numeroS);
             contas.add(new Conta(numero,nomePessoa,banco));
            }
    
        String contaSelecionada = request.getParameter("conta");
        String operacao = request.getParameter("operacao");
        String valorS = request.getParameter("valor");            
        
    if (contaSelecionada != null && operacao != null && valorS != null && !contaSelecionada.isEmpty() && !operacao.isEmpty() && !valorS.isEmpty()) {
            int numeroConta = Integer.parseInt(contaSelecionada);
            double valor = Double.parseDouble(valorS);
            
            Conta conta = null;
            for (Conta c : contas) {
                if (c.getNumero() == numeroConta) {
                    conta = c;
                    break;
                }
            }
 
            if (conta != null) {
                String msg = "";
                if (operacao.equals("saque")) {
                    msg = conta.saque(valor);
                    
                } else if (operacao.equals("deposito")) {
                    out.print("<p>" + conta.deposito(valor) + "</p>");
                }
                out.print("<p>" + msg + "</p>");
            } else {
                out.print("<p>Conta não encontrada.</p>");
            }
        }
     %>
        <form action="cadastraconta.jsp" method="post">
            <h4>Movimentação na conta código: 
            <select id="conta" name="conta">
           <% for (Conta c : contas) { %>
           <option ><%= c.getNumero() %></option>
           <% } %>
        </select></h4>
        <input type="radio" id="saque" name="operacao" value="saque">
        <label for="saque">Saque</label>
        <input type="radio" id="deposito" name="operacao" value="deposito">
        <label for="deposito">Deposito</label> - 
        <label for="valor">Valor:
            <input type="text" id="valor" name="valor" value="">
        </label>
        <input type="submit" value="Movimentar">
        </form>
        
        
               
   <%        
    out.print("<h2>Contas Cadastradas:</h2>");
    for (Conta c : contas) {
        out.print("<h6>Informações da Conta:</h6>");
        out.print("<p>" + c.imprimirSaldo() + "</p>");
        out.print("<hr>");
    }
 
        %>
        
        <hr>
        
    </body>
</html>