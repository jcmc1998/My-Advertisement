package com.mycompany.validador;

public class ValidadorForm {

    public static String validarNombre(String nombre) {
        String regExNombre = "^[A-Za-z]{2,24}$";

        return nombre.matches(regExNombre) ? nombre : null;

    }

    public static String validarApellido(String apellido) {
        String regExApellido = "^[A-Za-z]{2,24}$";

        return apellido.matches(regExApellido) ? apellido : null;

    }

    public static String validarEmail(String email) {
        String regExEmail = "^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";

        return email.matches(regExEmail) ? email : null;

    }

    public static String validarTitulo(String titulo) {
        String regExTitulo = "^[A-Za-z]{2,24}$";

        return titulo.matches(regExTitulo) ? titulo : null;

    }

    public static String validarDescripcion(String descripcion) {
        String regExDescripcion = "^[a-zA-Z0-9?$@#()'!,+\\-=_:.&€£*%\\s]{5,255}$";

        return descripcion.matches(regExDescripcion) ? descripcion : null;

    }

    public static Integer validarPrecio(String precio) {
        String regExPrecio = "^\\d+$";
        if(precio == null){
            return null;
        }
        return precio.matches(regExPrecio) ? Integer.parseInt(precio) : null;

    }

}
