function stickyHeader () {

  const header = document.querySelector('.page-header');
  const stickyClassname = 'sticky-position';

  if (window.pageYOffset >= 750) {
    header.classList.add(stickyClassname);
  } else {
    header.classList.remove(stickyClassname);
  }
}

window.onscroll = function () {
  stickyHeader ();
}
