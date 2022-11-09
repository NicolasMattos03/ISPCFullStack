<<<<<<< HEAD
let i = 0
let j = 3
=======
let i = 0;
let j = 3;
>>>>>>> d217574b660591bc0ddc62a1022e8cfd95e3ae79

const puntos = document.querySelectorAll(".puntos button");
const imagenes = document.querySelectorAll(".cajaimagenes img");

<<<<<<< HEAD
function siguiente(){
    console.log(document.getElementsByClassName("imgactiva"));
    document.getElementById("contenido " + (i+1)).classList.remove("imgactiva");
    document.getElementById("contenido " + (i+1)).classList.add("imgcarrousel");
    i = (j + i + 1) % j;
    document.getElementById("contenido " + (i+1)).classList.remove("imgcarrousel");
    document.getElementById("contenido " + (i+1)).classList.add("imgactiva");
    indicador (i + 1);
}

function anterior(){
    console.log(document.getElementsByClassName("imgactiva"));
    document.getElementById("contenido " + (i+1)).classList.remove("imgactiva");
    document.getElementById("contenido " + (i+1)).classList.add("imgcarrousel");
    i = (j + i - 1) % j;
    document.getElementById("contenido " + (i+1)).classList.remove("imgcarrousel");
    document.getElementById("contenido " + (i+1)).classList.add("imgactiva");
}

function indicador(num){
    puntos.forEach(function(punto){
        punto.style.backgroundColor = "transparent";
    });
    document.querySelector(".puntos button:nth-child(" + num +")").style.backgroundColor = "aliceblue";
}

function punto(indice){
    imagenes.forEach(function(imagen){
        imagen.classList.remove("imgactiva");
        imagen.classList.add("imgcarrousel");
    });
    document.getElementById("contenido " + indice).classList.remove("imgcarrousel");
    document.getElementById("contenido " + indice).classList.add("imgactiva");
    i = indice - 1;
    indicador(indice);
}
=======
function siguiente() {
  console.log(document.getElementsByClassName("imgactiva"));
  document.getElementById("contenido " + (i + 1)).classList.remove("imgactiva");
  document.getElementById("contenido " + (i + 1)).classList.add("imgcarrousel");
  i = (j + i + 1) % j;
  document
    .getElementById("contenido " + (i + 1))
    .classList.remove("imgcarrousel");
  document.getElementById("contenido " + (i + 1)).classList.add("imgactiva");
  indicador(i + 1);
}

function anterior() {
  console.log(document.getElementsByClassName("imgactiva"));
  document.getElementById("contenido " + (i + 1)).classList.remove("imgactiva");
  document.getElementById("contenido " + (i + 1)).classList.add("imgcarrousel");
  i = (j + i - 1) % j;
  document
    .getElementById("contenido " + (i + 1))
    .classList.remove("imgcarrousel");
  document.getElementById("contenido " + (i + 1)).classList.add("imgactiva");
}

function indicador(num) {
  puntos.forEach(function (punto) {
    punto.style.backgroundColor = "transparent";
  });
  document.querySelector(
    ".puntos button:nth-child(" + num + ")"
  ).style.backgroundColor = "aliceblue";
}

function punto(indice) {
  imagenes.forEach(function (imagen) {
    imagen.classList.remove("imgactiva");
    imagen.classList.add("imgcarrousel");
  });
  document
    .getElementById("contenido " + indice)
    .classList.remove("imgcarrousel");
  document.getElementById("contenido " + indice).classList.add("imgactiva");
  i = indice - 1;
  indicador(indice);
}
>>>>>>> d217574b660591bc0ddc62a1022e8cfd95e3ae79
