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
