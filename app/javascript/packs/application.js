import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { fetchWeather } from '../components/weather';
import { initAutocomplete } from '../plugins/init_autocomplete';
import "../plugins/flatpickr";
import { mosaic } from '../components/mosaic';

initUpdateNavbarOnScroll();
fetchWeather();
initAutocomplete();
mosaic();

