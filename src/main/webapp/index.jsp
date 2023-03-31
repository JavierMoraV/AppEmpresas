<%-- 
    Document   : index
    Created on : 30-03-2023, 19:37:34
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="NewServlet" method="POST">
            <label>Esto es un LABEL</label>
            <input type="text" name="nombre"><br>
            <button type="submit">push me</button>
        </form>
    </body>
</html>
