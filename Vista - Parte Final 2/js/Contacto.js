const nombre = document.getElementById("name");
const email = document.getElementById("email");
const texto = document.getElementById("message");
const form = document.getElementById("form");
const avisos = document.getElementById("advertencias");

form.addEventListener("submit", (e) => {
  e.preventDefault();
  let advertencia = "";
  avisos.innerHTML = "";
  let validar = false;
  let regexNombre = /^[A-Z]+$/i;
  let regexEmail = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
  if (nombre.value === "") {
    advertencia += "El campo nombre está vacío <br>";
    validar = true;
  }
  if (!regexNombre.test(nombre.value)) {
    advertencia += "El campo nombre solo acepta letras <br>";
    validar = true;
  }
  if (!regexEmail.test(email.value)) {
    advertencia += "El campo email no es válido <br>";
    validar = true;
  }
  if (texto.value < 1) {
    advertencia += "Caja de texto vacia";
    validar = true;
  }

  if (validar) {
    avisos.innerHTML = advertencia;
  } else {
    avisos.innerHTML = "Su consulta ha sido enviada con éxito";
  }
});
