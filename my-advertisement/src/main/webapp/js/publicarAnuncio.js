//https://regexr.com/
function checkNombre() {
    var nombre = document.getElementById("nombre");
    var divNombre = document.getElementById("statusNombre");

    if (!nombre.value.match(/^[A-Za-z]{2,24}$/)) {
        divNombre.classList.remove('valid-feedback');
        divNombre.innerHTML = 'Nombre Inválido';
        divNombre.classList.add('invalid-feedback');
        nombre.classList.add('is-invalid');
    } else {
        divNombre.innerHTML = '';
        nombre.classList.remove('is-invalid');
        divNombre.classList.add('valid-feedback');
        nombre.classList.add('is-valid');
    }
    checkForm();
}

function checkApellido() {
    var apellido = document.getElementById("apellido");
    var divApellido = document.getElementById("statusApellido");
    if (!apellido.value.match(/^[A-Za-z]{2,24}$/)) {
        divApellido.classList.remove('valid-feedback');
        divApellido.innerHTML = 'Apellido Inválido';
        divApellido.classList.add('invalid-feedback');
        apellido.classList.add('is-invalid');
    } else {
        divApellido.innerHTML = '';
        apellido.classList.remove('is-invalid');
        divApellido.classList.add('valid-feedback');
        apellido.classList.add('is-valid');
    }
    checkForm();
}

function checkEmail() {
    var email = document.getElementById("email");
    var divEmail = document.getElementById("statusEmail");
    if (!email.value.match(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/)) {
        divEmail.classList.remove('valid-feedback');
        divEmail.innerHTML = 'Email Inválido';
        divEmail.classList.add('invalid-feedback');
        email.classList.add('is-invalid');
    } else {
        divEmail.innerHTML = '';
        email.classList.remove('is-invalid');
        divEmail.classList.add('valid-feedback');
        email.classList.add('is-valid');
    }
    checkForm();
}

function checkTitulo() {
    var titulo = document.getElementById("titulo");
    var divTitulo = document.getElementById("statusTitulo");
    if (!titulo.value.match(/^[A-Za-z]{2,24}$/)) {
        divTitulo.classList.remove('valid-feedback');
        divTitulo.innerHTML = 'Título Inválido';
        divTitulo.classList.add('invalid-feedback');
        titulo.classList.add('is-invalid');
    } else {
        divTitulo.innerHTML = '';
        titulo.classList.remove('is-invalid');
        divTitulo.classList.add('valid-feedback');
        titulo.classList.add('is-valid');
    }
    checkForm();
}

function checkPrecio() {
    var precio = document.getElementById("precio");
    var divPrecio = document.getElementById("statusPrecio");
    if (precio.value === '' || isNaN(precio.value)) {
        divPrecio.classList.remove('valid-feedback');
        precio.classList.remove('is-valid');
        divPrecio.innerHTML = 'Precio Inválido';
        divPrecio.classList.add('invalid-feedback');
        precio.classList.add('is-invalid');
    } else {
        divPrecio.innerHTML = '';
        divPrecio.classList.remove('invalid-feedback');
        precio.classList.remove('is-invalid');
        divPrecio.classList.add('valid-feedback');
        precio.classList.add('is-valid');
    }
    checkForm();
}
function checkDescripcion() {
    var descripcion = document.getElementById("descripcion");
    var divDescripcion = document.getElementById("statusDescripcion");
    if (!descripcion.value.match(/^[a-zA-Z0-9?$@#()'!,+\-=_:.&€£*%\s]{5,255}$/)) {
        divDescripcion.classList.remove('valid-feedback');
        divDescripcion.innerHTML = 'Descripción Inválida';
        divDescripcion.classList.add('invalid-feedback');
        descripcion.classList.add('is-invalid');
    } else {
        divDescripcion.innerHTML = '';
        descripcion.classList.remove('is-invalid');
        divDescripcion.classList.add('valid-feedback');
        descripcion.classList.add('is-valid');
    }
    checkForm();
}

function checkTipo() {
    var proveedor = document.getElementById('proveedor');
    var precio = document.getElementById('precio');
    var divPrecio = document.getElementById("statusPrecio");
    if (proveedor.checked) {
        precio.disabled = false;
    } else {
        divPrecio.classList.remove('invalid-feedback');
        precio.classList.remove('is-invalid');
        divPrecio.classList.remove('valid-feedback');
        precio.classList.remove('is-valid');
        divPrecio.innerHTML = '';
        precio.value = '';
        precio.disabled = true;
    }
    checkForm();
}

function checkForm() {
    var claseValidar = "valid-feedback";

    var nombre = document.getElementById("statusNombre").classList.contains(claseValidar);
    var apellido = document.getElementById("statusApellido").classList.contains(claseValidar);
    var email = document.getElementById("statusEmail").classList.contains(claseValidar);
    var titulo = document.getElementById("statusTitulo").classList.contains(claseValidar);
    var precio = document.getElementById("statusPrecio").classList.contains(claseValidar);
    var descripcion = document.getElementById("statusDescripcion").classList.contains(claseValidar);

    var proveedor = document.getElementById('proveedor');

    if ( (nombre && apellido && email && titulo && descripcion) && ((proveedor.checked && precio) || !proveedor.checked) ) {
        document.getElementById("publicarBtn").disabled = false;
    } else {
        document.getElementById("publicarBtn").disabled = true;
    }

}

