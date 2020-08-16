// --------------
// Normal Toggler:
// --------------

var Navigation = document.querySelector('.navigation-list');
var Toggle = document.querySelector('.toggle');

changeMenuVisibility();

function changeMenuVisibility () {
  Navigation.classList.toggle('is-opened');
  Toggle.classList.toggle('is-toggled');
}

Toggle.addEventListener('click', function() {
  changeMenuVisibility();
});

// -------------------------------
// Toggler for all class elements:
// -------------------------------

var Navigation = document.querySelectorAll('.navigation-list');
var Toggle = document.querySelector('.toggle');

changeMenuVisibility();

function changeMenuVisibility () {
  Navigation.forEach(function(element) {
      element.classList.toggle('is-opened');
    });
  Toggle.classList.toggle('is-toggled');
}

Toggle.addEventListener('click', function() {
  changeMenuVisibility();
});
