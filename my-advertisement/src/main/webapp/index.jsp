<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:import url="bs.jsp" />
        <title>Lista de Anuncios</title>
    </head>
    <body>
        <sql:setDataSource var = "connection" driver = "${initParam['DBDRIVER']}"
                           url = "${initParam['DBURL']}"
                           user = "${initParam['DBUSER']}"  password = "${initParam['DBPWD']}"/>
        <br>
        <div class="container col-md-6" style="padding-bottom: 40px;">
            <h1 class="display-4" style="text-align: center">Lista de Anuncios</h1>
        </div>
        <div class="container">  

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
                    <sql:query dataSource = "${connection}" sql = "SELECT * FROM anuncio" var = "resultadoAnuncios" />

                    <c:forEach var="anuncio" items="${resultadoAnuncios.rows}">
                        <tr class="data">
                            <th scope="row"><c:out value="${anuncio.idanuncio}" /></th>
                            <td><c:out value="${anuncio.titulo}" /></td>
                            <td><c:out value="${anuncio.nombreprop} ${anuncio.apellidoprop}"/></td>
                            <c:choose>
                                <c:when test="${anuncio.precio == null}">
                                    <td><c:out value="Solicitante" /></td>
                                </c:when>
                                <c:otherwise>
                                    <td><c:out value="Proveedor" /></td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                    </c:forEach>   
                </tbody>
            </table>
        </div>
        <br>
        <div class="container col-md-6" style="padding-bottom: 40px;">
            <button class="btn btn-primary btn-lg btn-block" type="submit" style="margin-top: 20px; background-color: #212529" onclick="window.location.href = 'publicarAnuncio.jsp'">Publicar</button>
        </div>
    </body>
</html>
