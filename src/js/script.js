// navbar started ----->

// small screen
var card = document.getElementById("card");
var maincontainer = document.getElementById("main-container");
function openmenu() {
  card.style.right = "0";
}
function closemenu() {
  card.style.right = "-275px";
}

// sign in
function togglePopupsignin() {
  let popup = document.getElementById("signin-popup");
  let overlay = document.querySelector(".overlaysignin");

  if (popup.style.display === "block") {
    popup.style.display = "none";
    overlay.style.display = "none";
  } else {
    popup.style.display = "block";
    overlay.style.display = "block";
  }
}
function signIn() {
  let username = document.getElementById("username").value;
  let password = document.getElementById("password").value;
  togglePopup();
}

// sign up
function togglePopupsignup() {
  let popup = document.getElementById("signup-popup");
  let overlay = document.querySelector(".overlaysignup");

  if (popup.style.display === "block") {
    popup.style.display = "none";
    overlay.style.display = "none";
  } else {
    popup.style.display = "block";
    overlay.style.display = "block";
  }
}
function signUp() {
  let name = document.getElementById("name").value;
  let email = document.getElementById("email").value;
  let mobile = document.getElementById("mobile").value;
  let password = document.getElementById("password").value;
  togglePopup();
  return false;
}

//switch signin-signup
function newuser(){
  let popup = document.getElementById("signin-popup");
  let overlay = document.querySelector(".overlaysignin");
  popup.style.display='none';
  overlay.style.display='none';
  togglePopupsignup();
}
function olduser(){
  let popup = document.getElementById("signup-popup");
  let overlay = document.querySelector(".overlaysignup");
  popup.style.display='none';
  overlay.style.display='none';
  togglePopupsignin();
}

// -----> navbar ended

/* Slider js by tushar start */
const slider = document.querySelector(".slider");
const slides = document.querySelectorAll(".slide");

let currentIndex = 0;

function nextSlide() {
  currentIndex = (currentIndex + 1) % slides.length;
  updateSlider();
}

function prevSlide() {
  currentIndex = (currentIndex - 1 + slides.length) % slides.length;
  updateSlider();
}

function updateSlider() {
  const translateValue = -currentIndex * 100 + "%";
  slider.style.transform = "translateX(" + translateValue + ")";
}

setInterval(nextSlide, 10000);

document.addEventListener("DOMContentLoaded", function () {
  var container = document.querySelector(".l1");
  container.style.display = "block";
});

/* Slider js by tushar Ends */

/* pop up */
function openPopup() {
  document.getElementById("overlay").style.display = "block";
  document.getElementById("popup").style.display = "block";
}

function closePopup() {
  document.getElementById("overlay").style.display = "none";
  document.getElementById("popup").style.display = "none";
}

function addToCart() {
  // Add your logic for adding to cart here
  alert("Item added to cart!");
  closePopup();
}