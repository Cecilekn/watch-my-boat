import $ from 'jquery';
import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { fetchWeather } from '../components/weather';
import { initAutocomplete } from '../plugins/init_autocomplete';
import "../plugins/flatpickr";
import { mosaic } from '../components/mosaic';
import { moveToSelected } from '../components/carroussel';
import { newFunction } from "../plugins/flatpickr";
import { initSweetalert } from '../plugins/init_sweetalert';


initUpdateNavbarOnScroll();
fetchWeather();
initAutocomplete();
mosaic();
moveToSelected();

initSweetalert();

// Eventos teclado
$(document).keydown(function(e) {
    switch(e.which) {
        case 37: // left
        moveToSelected('prev');
        break;

        case 39: // right
        moveToSelected('next');
        break;

        default: return;
    }
    e.preventDefault();
});

$('#carousel div').click(function() {
  moveToSelected($(this));
});

$('#prev').click(function() {
  moveToSelected('prev');
});

$('#next').click(function() {
  moveToSelected('next');
});

const buttonDate = document.querySelector("#date-validation")
if (buttonDate){
  newFunction();
  window.newFunction = newFunction;
}

