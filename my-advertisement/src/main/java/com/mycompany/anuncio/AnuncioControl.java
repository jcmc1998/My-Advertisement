package com.mycompany.anuncio;

import java.util.ArrayList;
import java.util.List;

public class AnuncioControl {
    
    private List<Anuncio> anuncios = new ArrayList<>();

    public AnuncioControl() {
        Propietario prop1 = new Propietario("nombre1", "Apellido1", "email1@gmail.com");
        Propietario prop2 = new Propietario("nombre2", "Apellido2", "email2@gmail.com");
        Long precio = 6000L;
        
        Solicitante anuncio1 = new Solicitante("Anuncio1", "Descripcion1", prop1);
        Proveedor anuncio2 = new Proveedor("Anuncio2", "Descripcion2", prop2, precio);
        
        anuncios.add(anuncio1);
        anuncios.add(anuncio2);
    }

    public List<Anuncio> getAnuncios() {
        return anuncios;
    }

}