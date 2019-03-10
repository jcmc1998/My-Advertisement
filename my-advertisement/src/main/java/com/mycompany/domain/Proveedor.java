package com.mycompany.domain;

import com.mycompany.domain.Propietario;

public class Proveedor extends Anuncio {

    private Integer precio;

    public Proveedor(String titulo, String descripcion, Propietario propietario, Integer precio) {
        super(titulo, descripcion, propietario);
        this.precio = precio;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }

}
