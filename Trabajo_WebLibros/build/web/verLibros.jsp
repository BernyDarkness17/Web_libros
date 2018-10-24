<%@page import="model.Libro"%>
<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>

    <body style="background-color: #FFF4F0">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb"style="height: 80px; background-color: #AD4D41">
                <li class="breadcrumb-item"><a href="index.jsp" style="color: white;"><h5>Pagina Principal</h5></a></li>
                <li class="breadcrumb-item"><a href="verLibros.jsp" style="color: white;"><h5 style="margin-top: -30px;margin-left: 20px">Listado de libros</h5></a></li>
            </ol>
        </nav>
        <%
            Data d = new Data();
        %>
    <center><h1>Libros registrados</h1></center>
    <br><br>
    <div class="jumbotron" style="margin-left: 120px; margin-right: 120px; background-color: white">
        <div class="container"style="width: 1400px" >
            <table class="table">
                <thead style="background-color: #B86642">
                    <tr style="color: white">
                        <th>ID</th>
                        <th>Titulo</th>
                        <th>Autor(a)</th>
                        <th>Sexo</th>
                        <th>Categoria</th>
                        <th>Precio $</th>
                    <tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                            for (Libro l : d.getLibro()) {
                        %>
                        <th scope="row"><%=l.getId()%></th>
                        <td><%=l.getNombrelibro()%></td>
                        <td><%=l.getNombreautora()%></td>
                        <%
                            if (l.getSexoautor() == 1) {
                                out.print("<td>Femenino</td>");
                            } else {
                                out.print("<td>Masculino</td>");
                            }
                            switch (l.getCategoria_FK()) {
                                case 1:
                                    out.print("<td>Terror</td>");
                                    break;
                                case 2:
                                    out.print("<td>Romantico</td>");
                                    break;
                                case 3:
                                    out.print("<td>Ciencia Ficcion</td>");
                                    break;
                                case 4:
                                    out.print("<td>Misterio</td>");
                                    break;
                                case 5:
                                    out.print("<td>Infantil</td>");
                                    break;
                                case 6:
                                    out.print("<td>Fantasia</td>");
                                    break;
                                default:
                                    out.print("<td>Comedia</td>");
                                    break;
                            }
                        %>
                        <td><%=l.getValorlibro()%></td>
                    </tr>
                    <%                    }

                    %>
                </tbody>
            </table>
        </div>
    </div>
    <br>
</body>
</html>
