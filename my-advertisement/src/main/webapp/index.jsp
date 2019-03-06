<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>Lista de Anuncios</title>
    </head>
    <body>
        <br>
        <div class="container col-md-6" style="padding-bottom: 40px;">
            <h1 class="display-4" style="text-align: center">Lista de Anuncios</h1>
        </div>
        <div class="container">  
            
            <jsp:useBean id="listaAnuncios" class="com.mycompany.anuncio.AnuncioControl"/>
            
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Título</th>
                        <th scope="col">Propietario</th>
                        <th scope="col">Tipo</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var = "filas" value = "${1}"/>
                    
                    <c:forEach items="${listaAnuncios.anuncios}" var="anuncio">
                        <tr class="data">
                            <th scope="row"><c:out value="${filas}" /></th>
                            <td><c:out value="${anuncio.titulo}" /></td>
                            <td><c:out value="${anuncio.propietario.nombre} ${anuncio.propietario.apellido}"/></td>
                            <td><c:out value="${anuncio.getClass().getSimpleName()}" /></td>
                        </tr>
                        
                        <c:set var = "filas" value = "${filas + 1}"/>
                    </c:forEach>   
                </tbody>
            </table>
        </div>
        <br>
        <div class="container col-md-6" style="padding-bottom: 40px;">
            <button class="btn btn-primary btn-lg btn-block" type="submit" style="margin-top: 20px; background-color: #212529" onclick="window.location.href='publicarAnuncio.jsp'">Publicar</button>
        </div>
    </body>
</html>
