// --------------
// Normal Toggler:
// --------------

const navigation = document.querySelector('.navigation-list');
const toggle = document.querySelector('.toggle');

changeMenuVisibility();

function changeMenuVisibility () {
  navigation.classList.toggle('is-opened');
  toggle.classList.toggle('is-toggled');
}

toggle.addEventListener('click', function() {
  changeMenuVisibility();
});

// -------------------------------
// Toggler for all class elements:
// -------------------------------

const navigation = document.querySelectorAll('.navigation-list');
const toggle = document.querySelector('.toggle');

changeMenuVisibility();

function changeMenuVisibility () {
  navigation.forEach(function(element) {
      element.classList.toggle('is-opened');
    });
  toggle.classList.toggle('is-toggled');
}

toggle.addEventListener('click', function() {
  changeMenuVisibility();
});
