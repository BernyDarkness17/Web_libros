<%@page import="java.util.List"%>
<%@page import="model.Categoria"%>
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
        <div class="jumbotron" style="margin-left: 200px; margin-right: 200px; background-color: #EEDCD5">
            <div class="container"style="width: 700px" >
                <form action="registroLibro.do" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="nombre">Titulo:</label>
                            <input class="form-control" type="text" name="txtNombreLibro" id="nombre" placeholder="Nombre Libro:" required>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="autor">Autor(a):</label>
                            <input class="form-control" id="autor" type="text" name="txtNombreAutor" placeholder="Nombre Autor:" required> 
                        </div>

                        <div class="form-group col-md-12">
                            <label for="autor">Autor(a):</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="sexo" id="ej" value="0" checked>
                                <label class="form-check-label" for="ej">
                                    Femenino
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="sexo" id="ej2" value="1">
                                <label class="form-check-label" for="ej2">
                                    Masculino
                                </label>
                            </div>
                        </div>

                        <div class="form-group col-md-12">
                            <label for="inputState">Categoria:</label>
                            <select id="inputState" name="cboCategoria" class="form-control">
                                <%
                                    for (Categoria ca : d.getCategorias()) {
                                %>                    
                                <option value="<%=ca.getId()%>"><%=ca.getNombre()%></option>
                                <%
                                    }

                                %>
                            </select>
                        </div>

                        <div class="form-group col-md-12">
                            <label for="valor">Valor:</label>
                            <input class="form-control" id="valor" type="number" name="valorLibro" placeholder="Valor Libro:" required> 
                        </div>

                            <button style="background-color: #AD4D41; margin-left: 170px;width:400px; height:60px;" type="submit" class="btn btn-danger">Registrar Libro</button>
                    </div>
                </form>   
            </div>
        </div>
    </body>
</html>
