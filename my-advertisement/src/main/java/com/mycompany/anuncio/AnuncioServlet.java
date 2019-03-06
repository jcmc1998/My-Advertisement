package com.mycompany.anuncio;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AnuncioServlet")
public class AnuncioServlet extends HttpServlet {

    private static final Logger logger = LoggerFactory.getLogger(AnuncioServlet.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String nombre = request.getParameter("nombre");

        String apellido = request.getParameter("apellido");

        String email = request.getParameter("email");

        String titulo = request.getParameter("titulo");

        String tipo = request.getParameter("tipo");

        String descripcion = request.getParameter("descripcion");
        
        Long precio = Long.parseLong(request.getParameter("precio"));
        
        Propietario propietario = new Propietario(nombre, apellido, email);
        
        if (tipo.equals("Solicitante")) {
            Solicitante anuncio = new Solicitante(titulo, descripcion, propietario);
        }else{
            Proveedor anuncio = new Proveedor(titulo, descripcion, propietario, precio);
        }
 
        logger.debug(String.format("Request Received [nombre=%s, apellido=%s, email=%s, titulo=%s, tipo=%s, precio=%s, descripcion=%s]",
                nombre, apellido, email, titulo, tipo, precio, descripcion));
        
        response.sendRedirect("index.jsp");
    }

}
