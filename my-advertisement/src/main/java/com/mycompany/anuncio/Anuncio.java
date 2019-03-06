package com.mycompany.anuncio;

public abstract class Anuncio {

    private String titulo;
    private String descripcion;
    private Propietario propietario;

    public Anuncio(String titulo, String descripcion, Propietario propietario) {
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.propietario = propietario;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Propietario getPropietario() {
        return propietario;
    }

    public void setPropietario(Propietario propietario) {
        this.propietario = propietario;
    }

}
