// ------------------------
// Toggler LINEAR function:
// ------------------------

const navigation = document.querySelectorAll('.navigation-list');
const toggle = document.querySelector('.toggle');

changeMenuVisibility();

function changeMenuVisibility () {
  navigation.forEach(element => {
    element.classList.toggle('is-opened');
  });
  toggle.classList.toggle('is-toggled');
}

toggle.addEventListener('click', function() {
  changeMenuVisibility();
});
