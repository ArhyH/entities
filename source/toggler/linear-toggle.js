// ------------------------
// Toggler LINEAR function:
// ------------------------

var Navigation = document.querySelectorAll('.navigation-list');
var Toggle = document.querySelector('.toggle');

changeMenuVisibility();

function changeMenuVisibility () {
  Navigation.forEach(element => {
    element.classList.toggle('is-opened');
  });
  Toggle.classList.toggle('is-toggled');
}

Toggle.addEventListener('click', function() {
  changeMenuVisibility();
});
