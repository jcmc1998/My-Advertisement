package com.mycompany.anuncio;

public class Proveedor extends Anuncio {

    private Long precio;

    public Proveedor(String titulo, String descripcion, Propietario propietario, Long precio) {
        super(titulo, descripcion, propietario);
        this.precio = precio;
    }

    public Long getPrecio() {
        return precio;
    }

    public void setPrecio(Long precio) {
        this.precio = precio;
    }

}
