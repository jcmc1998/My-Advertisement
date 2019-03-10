package com.mycompany.service;

import com.mycompany.db.DBConnection;
import com.mycompany.validador.ValidadorForm;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;

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

        String nombre = ValidadorForm.validarNombre(request.getParameter("nombre"));
        String apellido = ValidadorForm.validarApellido(request.getParameter("apellido"));
        String email = ValidadorForm.validarEmail(request.getParameter("email"));
        String titulo = ValidadorForm.validarTitulo(request.getParameter("titulo"));
        String descripcion = ValidadorForm.validarDescripcion(request.getParameter("descripcion"));
        Integer precio = ValidadorForm.validarPrecio(request.getParameter("precio"));
        String tipo = request.getParameter("tipo");
        
        logger.debug(String.format("Request Received [nombre=%s, apellido=%s, email=%s, titulo=%s, tipo=%s, precio=%s, descripcion=%s]",
                nombre, apellido, email, titulo, tipo, precio, descripcion));
        
        try {
            String url = getServletContext().getInitParameter("DBURL");
            String user = getServletContext().getInitParameter("DBUSER");
            String password = getServletContext().getInitParameter("DBPWD");

            DBConnection dbConnection = new DBConnection(url, user, password);
            Connection con = dbConnection.getConnection();

            if (tipo.equals("Solicitante")) {
                String sql = "INSERT INTO anuncio (titulo, descripcion, nombreprop, apellidoprop, emailprop) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, titulo);
                st.setString(2, descripcion);
                st.setString(3, nombre);
                st.setString(4, apellido);
                st.setString(5, email);
                st.executeUpdate();
                st.close();
            } else {
                String sql = "INSERT INTO anuncio (titulo, descripcion, precio, nombreprop, apellidoprop, emailprop) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, titulo);
                st.setString(2, descripcion);
                st.setInt(3, precio);
                st.setString(4, nombre);
                st.setString(5, apellido);
                st.setString(6, email);
                st.executeUpdate();
                st.close();
            }
            con.close();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(AnuncioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("index.jsp");
    }

}
