const fetchByCoord = (lat, lon) => {
  const sky = document.querySelector("#weather-sky");
  const temp = document.querySelector("#weather-temp");
  const img = document.querySelector("#weather-img");
  const wind = document.querySelector("#weather-wind");

  fetch(`https://cors-anywhere.herokuapp.com/http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=f7e8f53ec526b533e8c9fa6a6a59885b&units=metric&lang=fr`)
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      sky.innerText = `${data.weather[0].description}`;
      temp.innerText = `${Math.round(data.main.temp)} °C`;
      wind.innerText = `${data.wind.speed}`;
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
