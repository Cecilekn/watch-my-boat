import $ from 'jquery';

function moveToSelected(element) {
  if (element == "next") {
    var selected = $(".selected").next();
  } else if (element == "prev") {
    var selected = $(".selected").prev();
  } else {
    var selected = element;
  }

  var next = $(selected).next();
  var prev = $(selected).prev();
  var hidePrevSecond = $(prev).prev();
  var hideNextSecond = $(next).next();

  $(selected).removeClass().addClass("selected");

  $(prev).removeClass().addClass("prev");
  $(next).removeClass().addClass("next");

  $(hideNextSecond).removeClass().addClass("hideNextSecond");
  $(hidePrevSecond).removeClass().addClass("hidePrevSecond");

  // $(nextSecond).nextAll().removeClass().addClass('hidePrevSecond');
  // $(prevSecond).prevAll().removeClass().addClass('hideNextSecond');

  const buttons = document.querySelectorAll(".caroussel-card-button");
  const darkFilters = document.querySelectorAll(".darken");

  buttons.forEach((button) => {
    if (button.parentNode.classList.contains("selected")){
      button.classList.remove("button-none");
    }
    else {
      button.classList.add("button-none");
    }
  })

  darkFilters.forEach((filter) => {
    if (filter.parentNode.classList.contains("selected")){
      filter.classList.add("darken-carousel-card");
    } else {
      filter.classList.remove("darken-carousel-card");
    }
  })
}

export { moveToSelected }
