import Swal from 'sweetalert2';

function formAlert(){

  window.onload = function() {
    var form = document.querySelector("form");
    if (form !== null) {
      form.onsubmit = submitted.bind(form);
    }
  }

  function submitted(event) {
    Swal.fire({
      title: 'Thank you!',
      text: 'The Atolo team has received your message and will be in contact with you shortly',
      type: 'success',
      confirmButtonText: 'proceed',
    })
  }
}

export { formAlert }
