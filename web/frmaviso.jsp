<%-- 
    Document   : frmaviso
    Created on : 27-oct-2020, 19:52:32
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
        <h1><c:if test="${aviso.id == 0}">Nuevo</c:if>
            <c:if test="${aviso.id != 0}">Editar</c:if>
            aviso
        </h1>
            <form action="Inicio" method="post">
                <input type="hidden" name="id" value="${aviso.id}"/>
            <table>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${aviso.titulo}"/></td>
                </tr>
                <tr>
                    <td>Contenido:</td>
                    <td><input type="text" name="contenido" value="${aviso.contenido}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"/></td>
                </tr>
            </table>
            </form>
    </body>
</html>
