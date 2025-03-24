<%-- 
    Document   : registrousuario
    Created on : 17 de jul. de 2024, 13:52:44
    Author     : Administrador
--%>
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
            .p {
                color:red;
            }
        </style>
    </head>
    <body>
        <h1>Registro de Usuários</h1>
        <form action="registrousuarios.jsp" method="get">
            <label for="nome">Nome completo: </label>
            <input type="text" name="nome" id="nome" required>
            <br><br>
            <label for="email">E-mail: </label>
            <input type="email" name="email" id="email" required>
            <br><br>
            <label for="dataNasc">Data de nascimento: </label>
            <input type="date" name="dataNasc" id="dataNasc" required>
            <br><br>
            <label for="genero">Gênero: </label>
            <select name="genero" required>
                <option value="masculino">Masculino</option>
                <option value="feminino">Feminino</option>
                <option value="outro">Outro</option>
            </select>
            <br><br>
            <label for="paisOrigem">País de Origem: </label>
            <select name="paisOrigem">
                <option value="Brasil">Brasil</option>
                <option value="Estados Unidos">Estados Unidos</option>
                <option value="Canadá">Canadá</option>
                <option value="Outro">Outro</option>    
            </select>
            <br><br>
            <label for="interesses">Interesses:</label><br>
            <p>Esportes</p>
            <input type="checkbox" name="interesses1" value="Esportes">
            <br>
            <p>Música</p>
            <input type="checkbox" name="interesses2" value="Música">
            <br>
            <p>Tecnologia</p>
            <input type="checkbox" name="interesses3" value="Tecnologia">
            <br>
            <p>Viagens</p>
            <input type="checkbox" name="interesses4" value="Viagens">
            <br><br>
            <label for="biografia">Biografia</label>
            <br>
            <textarea name="mensagem" id="mensagem" placeholder="Digite aqui..."></textarea>
            <br>
            <input type="submit">
        </form>
    </body>
</html>
