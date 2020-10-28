<%-- 
    Document   : Listado
    Created on : 27-oct-2020, 19:48:13
    Author     : kr1pt0n
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <h1>Avisos</h1>
        <p><a href="Inicio?action=add">Nuevo Aviso</a></p>

        <table border="1">
            <tr>
                <th><b>Id</b></th>
                <th><b>Titulo</b></th>
                <th><b>Contenido</b></th>
                <th><b>Modificar</b></th>
                <th><b>Eliminar</b></th>
            </tr>
            <c:forEach var="item" items="${avisos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.contenido}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Modificar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('Realmente Esta Seguro'))">Eliminar</a></td>
                </tr>
            </c:forEach> 
        </table>
    </body>
</html>
