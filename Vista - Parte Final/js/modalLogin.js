const email = document.getElementById("email");

const avisos = document.getElementById("advertencias");

form.addEventListener("submit", (e) => {
  e.preventDefault();
  let advertencia = "";
  avisos.innerHTML = "";
  let validar = false;
  let regexEmail = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;

  if (!regexEmail.test(email.value)) {
    advertencia += "El campo email no es válido <br>";
    validar = true;
  }
  if (validar) {
    avisos.innerHTML = advertencia;
  } else {
    avisos.innerHTML = "Su consulta ha sido enviada con éxito";
  }
});
