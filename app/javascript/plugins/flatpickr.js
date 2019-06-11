import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const datepickerDiv = document.querySelectorAll(".datepicker, .timepicker, .datetimepicker");

if (datepickerDiv.length > 0) {
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

const button = document.querySelector("#toto");
if (button) {
  button.disabled = true;
  flatpickr(".datetimepicker", {
      enableTime: true,
      // noCalendar: true,
      dateFormat: "Y-m-d H:i",
      minDate: "6:00",
      maxDate: "23:00",
      onChange: function(selectedDates, dateStr, instance){
          button.disabled = (dateStr == '');
      }
  })
}

