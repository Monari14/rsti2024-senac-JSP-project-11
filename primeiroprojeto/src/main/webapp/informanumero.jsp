<%-- 
    Document   : informanumero
    Created on : 4 de jul. de 2024, 17:14:26
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulário</h1>
        <form action="contar2.jsp" method="get">
            <label for="numero" class="form-label">Número: </label>
            <input type="number" name="numero" class="form-control">
            
            <input type="submit" value="Enviar" class="btn btn-primary">
            
        </form>
    </body>
</html>
