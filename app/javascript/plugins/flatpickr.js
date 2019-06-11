import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const datepickerDiv = document.querySelector(".datepicker");

if (datepickerDiv) {
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  })


  flatpickr(".timepicker", {
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
      minDate: "6:00",
      maxDate: "23:00",
  })
}


