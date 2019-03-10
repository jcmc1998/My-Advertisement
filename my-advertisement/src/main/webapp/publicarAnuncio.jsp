<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="./js/publicarAnuncio.js"></script>
        <c:import url="bs.jsp" />
        <title>Publicar Anuncio</title>
    </head>
    <body>
        <br>
        <div class="container col-md-6" style="padding-bottom: 10px;">
            <h1 class="display-4" style="text-align: center">Publicar Anuncio</h1>
        </div>
        <hr>
        <div class="container col-md-5">  
            <form action="AnuncioServlet" method="POST" id="publicarAnuncioForm">
                <div class="row">
                    <div class="col-md-6">
                        <h4 style="text-align: left">Propietario</h4>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label>Nombre</label>
                        <input type="text" class="form-control" name="nombre" placeholder="Nombre"  id="nombre" onkeyup="checkNombre()">
                        <div id="statusNombre"> </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Apellido</label>
                        <input type="text" class="form-control" name="apellido" placeholder="Apellido" id="apellido" onkeyup="checkApellido()">
                        <div id="statusApellido"> </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Email" onkeyup="checkEmail()" id="email">
                        <div id="statusEmail"> </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h4 style="text-align: left">Anuncio</h4>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label>Título</label>
                        <input type="text" class="form-control" name="titulo" placeholder="Titulo" id="titulo" onkeyup="checkTitulo()">
                        <div id="statusTitulo"> </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label style="padding-bottom: 6px">Tipo</label>
                        <div class="form-group">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="tipo" id="solicitante" onclick="checkTipo()" value="Solicitante" checked>
                                <label class="form-check-label" style="padding-right: 20px">Solicitante</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="tipo" id="proveedor" onclick="checkTipo()" value="Proveedor">
                                <label class="form-check-label">Proveedor</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label>Precio</label>
                        <input type="text" class="form-control" name="precio" placeholder="$" id="precio" onkeyup="checkPrecio()" disabled>
                        <div id="statusPrecio"> </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-12">
                        <label>Descripción</label>
                        <textarea class="form-control" rows="4" name="descripcion" placeholder="Descrición" id="descripcion" style="resize: none" onkeyup="checkDescripcion()"></textarea>
                        <div id="statusDescripcion"> </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-lg btn-block" style="margin-top: 20px; background-color: #212529;" disabled="disabled" id="publicarBtn" type="submit">Publicar</button>
                <br>
            </form>
        </div>
    </body>
</html>
