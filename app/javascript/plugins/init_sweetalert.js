import swal from 'sweetalert';

const launchSwal = () => {
    swal({
      title: "Beau boulot",
      text: "Votre compte-rendu a été envoyé",
      icon: "success"
    });
}

const initSweetalert = () => {
  if (window.location.search.includes("sweetalert")) {
    setTimeout(launchSwal, 1000);
  }
}

export { initSweetalert };
