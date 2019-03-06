<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
                        <input type="text" class="form-control" name="nombre" placeholder="Nombre" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Apellido</label>
                        <input type="text" class="form-control" name="apellido" placeholder="Apellido" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Email" required>
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
                        <input type="text" class="form-control" name="titulo" placeholder="Titulo" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label style="padding-bottom: 6px">Tipo</label>
                        <div class="form-group">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="tipo" value="Solicitante">
                                <label class="form-check-label" style="padding-right: 20px">Solicitante</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="tipo" value="Proveedor">
                                <label class="form-check-label">Proveedor</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label>Precio</label>
                        <input type="text" class="form-control" name="precio" placeholder="Precio" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-12">
                        <label>Descripción</label>
                        <textarea class="form-control" rows="4" name="descripcion" placeholder="Descrición" style="resize: none"></textarea>
                    </div>
                </div>
                <button class="btn btn-primary btn-lg btn-block" style="margin-top: 20px; background-color: #212529;">Publicar</button>
                <br>
            </form>
        </div>
    </body>
</html>
