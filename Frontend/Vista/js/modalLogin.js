const nombre = document.getElementById("exampleInputName1")
const apellido = document.getElementById("exampleInputSurname1")
const email = document.getElementById("exampleInputEmail1")
const contraseña = document.getElementById("exampleInputPassword1")
const form = document.getElementById("form")
const avisos = document.getElementById("advertencias")



form.addEventListener("submit", e=>{
    e.preventDefault();
    let advertencia = "";
    avisos.innerHTML ="";
    let validar = false;
    let regexNombre = /^[A-Z]+$/i;
    let regexApellido = /^[A-Z]+$/i;
    let regexEmail = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    let regexContraseña = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])([A-Za-z\d$@$!%*?&]|[^ ]){8,15}$/;
    if(nombre.value ===''){
        advertencia += 'El campo nombre está vacío <br>';
        validar = true;
    }
    if(apellido.value ===''){
        advertencia += 'El campo apellido está vacío <br>';
        validar = true;
    }
    if(!regexNombre.test(nombre.value)){
        advertencia += 'El campo nombre solo acepta letras <br>';
        validar = true;
    }
    if(!regexApellido.test(apellido.value)){
        advertencia += 'El campo apellido solo acepta letras <br>';
        validar = true;
    }
    if(!regexEmail.test(email.value)){
        advertencia += 'El campo email no es válido <br>';
        validar = true;
        console.log("contraseña no válida")
    }
    if(!regexContraseña.test(contraseña.value)){
        advertencia += 'La contraseña debe tener de 8 a 15 caracteres, una minúscula, mayúscula, un dígito, un caracter especial, y no puede contener espacios en blanco! <br>';
        validar = true;
    }

    if(validar){
        avisos.innerHTML = advertencia;
    } else {
        avisos.style.color = "Green";
        avisos.innerHTML = "Su consulta ha sido enviada con éxito";
    }
});

