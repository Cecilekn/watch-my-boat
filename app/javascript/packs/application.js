import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { fetchWeather } from '../components/weather';
import "../plugins/flatpickr";
import { mosaic } from '../components/mosaic';

initUpdateNavbarOnScroll();
fetchWeather();
mosaic();
