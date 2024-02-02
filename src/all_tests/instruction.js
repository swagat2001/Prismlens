let currentSlide = 0;
const slides = document.querySelector(".carousel-inner");
function showSlide() {
  const slideWidth = slides.clientWidth;
  slides.style.transform = `translateX(${-currentSlide * slideWidth}px)`;
}
function toggleAgree() {
  const button = document.getElementById("nextbutton");
  const buttonText = button.innerText;
  currentSlide = (currentSlide + 1) % slides.children.length;
  console.log(currentSlide);
  if (currentSlide == 5) {
    button.innerText = "I'm ready";
  }
  if (currentSlide == 0) {
    window.location.href = "next page.html";
  }
  showSlide();
}
function closemyModal() {
  document.getElementById("myModal").style.display = "none";
  document.getElementById("myDecision").style.display = "block";
}
function openmyModel() {
  document.getElementById("myModal").style.display = "block";
  document.getElementById("myDecision").style.display = "none";
}
function back() {
  window.location.href = "color-blindness-test.html";
}

// scroller

var rangeInput = document.querySelector(".input-range");
var rectangle = document.querySelector(".rectangle");

rangeInput.addEventListener("input", function () {
  var scrollPercentage = this.value / this.max;
  var newHeight = scrollPercentage * document.documentElement.scrollHeight;
  var newwidth = scrollPercentage * document.documentElement.scrollHeight;
  rectangle.style.height = newHeight / 3 + "px";
  rectangle.style.width = newHeight / 1.5 + "px";
});
window.addEventListener("scroll", function () {
  var scrollPercentage = rangeInput.value / rangeInput.max;
  var newHeight = scrollPercentage * document.documentElement.scrollHeight;
  var newwidth = scrollPercentage * document.documentElement.scrollHeight;
  rectangle.style.height = newHeight + "px";
  rectangle.style.width = newHeight + "px";
});
