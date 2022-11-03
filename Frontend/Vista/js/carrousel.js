var carrouselVentas = ['.img/alquiler1.jpg', '.img/alquiler2.jpg', '.img/alquiler3.jpg', ''],
cont = 0;
console.log(carrouselVentas.length)
function carrousel(contenedorCarrousel){
    contenedorCarrousel.addEventListener('click', e=> {
        let atras = contenedorCarrousel.querySelector('.atras'),
            adelante = contenedorCarrousel.querySelector('.adelante'),
            img = contenedorCarrousel.querySelector("imgCarrousel"),
            boton = e.target;
       
        if (boton == atras){
            if( cont > 0){
                img.src = carrouselVentas[cont - 1];
                cont--;
            } else {
                console.log(carrouselVentas[carrouselVentas.length - 1]);
                cont = carrouselVentas.length -1;
            }
        } else if (boton == adelante){
            if( cont < carrouselVentas.length - 1){
                img.src = carrouselVentas[cont + 1];
                cont++;
            } else {
                img.src = carrouselVentas[0];
                cont = 0;
            }
        }
    });
}

document.addEventListener("DOMContentLoaded", () => {
    let contenedorCarrousel = document.querySelector('.contenedorCarrousel');
    carrousel(contenedorCarrousel);
})