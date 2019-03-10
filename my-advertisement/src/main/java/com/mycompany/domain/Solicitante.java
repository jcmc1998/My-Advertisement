package com.mycompany.domain;

import com.mycompany.domain.Anuncio;
import com.mycompany.domain.Propietario;

public class Solicitante extends Anuncio {

    public Solicitante(String titulo, String descripcion, Propietario propietario) {
        super(titulo, descripcion, propietario);
    }

}
