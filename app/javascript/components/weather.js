const fetchByCoord = (lat, lon) => {
  const sky = document.querySelector("#weather-sky");
  const temp = document.querySelector("#weather-temp");
  const img = document.querySelector("#weather-img");

  fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=f7e8f53ec526b533e8c9fa6a6a59885b&units=metric`)
    .then(response => response.json())
    .then((data) => {
      sky.innerText = `${data.weather[0].description}`;
      temp.innerText = `${data.main.temp} °C`;
      img.src = `http://openweathermap.org/img/w/${data.weather[0].icon}.png`;
    });
};

const fetchWeather = () => {
  const wearherBox = document.getElementById("weather");

  if (wearherBox) {
    fetchByCoord(wearherBox.dataset.lat, wearherBox.dataset.lon);
  }
};

export { fetchWeather };
