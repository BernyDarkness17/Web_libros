<%-- 
    Document   : newjsp
    Created on : 21/08/2018, 11:22:50 PM
    Author     : Berny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form action="registroLibro.do" method="post">

            <h4>Ingreso de Libros</h4>

            Nombre Libro: <input type="text" name="txtNombreLibro" placeholder="Nombre Libro:" required>
            <br>
            <br>
            Nombre Autora: <input type="text" name="txtNombreAutor" placeholder="Nombre Autor:" required> 
            <br>
            <br>

            Sexo Autor:
            <br>
            <input type="radio"  name="sexo" value="1" checked>Femenino <br>
            <input type="radio"  name="sexo" value="0">Masculino 
            <br>
            <br>
            Categoria:
            <select name="cboCategoria">
                <%
                    for (Categoria ca : d.getCategorias()) {
                %>                    
                <option value="<%=ca.getId()%>"><%=ca.getNombre()%></option>
                <%
                    }

                %>

            </select>
            <br>
            <br>
            Valor Libro: $ 
            <input type="number" name="valorLibro" placeholder="Valor Libro:" required> 
            <br>
            <br>
            <input type="submit" value="Registrar">
        </form>
    </body>
</html>
