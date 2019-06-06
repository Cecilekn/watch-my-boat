import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { fetchWeather } from '../components/weather';
import { initAutocomplete } from '../plugins/init_autocomplete';

initUpdateNavbarOnScroll();
fetchWeather();
initAutocomplete();
