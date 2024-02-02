var values = [12, 8, 6, 29, 57, 5, 3, 15, 74, 2];
var used = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
var i,
  plate,
  answer,
  active,
  waiting,
  good = 0,
  all = 0,
  res = false;
var count = 0;
function stillGood() {
  for (i = 0; i < 10; i++) {
    if (used[i] == 0) {
      return true;
    }
  }
  return false;
}

function displayStuff() {
  waiting = false;
  $k("#input").css("display", "inline-block");
  $k("#show").css("display", "inline-block");
  $k("#image").css("display", "inline-block");
}

function showPlate() {
  $k("#button").css("display", "none");
  $k("#image").css("display", "none");

  $k("#input")[0].value = "";
  $k("#userAnswer")[0].innerText = "";
  $k("#rightAnswer")[0].innerText = "";

  active = true;
  waiting = true;
  if (!stillGood()) {
    for (i = 0; i < 10; i++) {
      used[i] = 0;
    }
  }
  plate = kLib.math.randomInt(0, 10);
  while (used[plate]) {
    plate = kLib.math.randomInt(0, 10);
  }
  used[plate] = 1;
  res = false;
  $k("#image")[0].src = "img/number-test/" + plate + ".jpg";
  $k("#image").css(
    "transform",
    "rotate(" + (kLib.math.randomInt(0, 90) - 45) + "deg)"
  );
  $k("#answer")[0].className = "";
  setTimeout(displayStuff, 300);
}

function showResult() {
  $k("#button").css("display", "inline-block");
  $k("#input").css("display", "none");
  $k("#show").css("display", "none");

  active = false;
  answer = $k("#userAnswer")[0].innerText = $k("#input")[0].value;
  $k("#rightAnswer")[0].innerText = values[plate];
  if (answer === "" || answer == 0) {
    answer = 0;
  }
  if (answer == values[plate]) {
    $k("#answer")[0].className = "right";
    good++;
  } else {
    $k("#answer")[0].className = "wrong";
  }
  all++;
  $k("#noGood")[0].innerText = good;
  $k("#noTotal")[0].innerText = all;
  $k("#noPercent")[0].innerText = Math.round((100 * good) / all);
}

$k("#button").on(
  "click",
  function () {
    showPlate();
  },
  false
);

$k("#show").on(
  "click",
  function () {
    showResult();
    count = count + 1;
    if (count == 10) {
      setTimeout(() => {
        alert("Number test completed! Your score : " + good);
        //window.location.reload();
        window.location.href = "../../index.html";
      }, 300);
    }
    showPlate();
  },
  false
);

$k("#image").on(
  "click",
  function () {
    if (res) {
      res = false;
      $k("#image")[0].src = "img/number-test/" + plate + ".jpg";
    }
  },
  false
);

$k(window).on(
  "keypress",
  function (event) {
    if (event.keyCode == 13) {
      count = count + 1;
      if (count == 10) {
        setTimeout(() => {
          alert("Number test completed! Your score : " + good);
          //window.location.reload();
          window.location.href = "../../index.html";
        }, 1000);
      }

      if (!waiting) {
        if (active) {
          showResult();
          showPlate();
        } else {
          showPlate();
        }
      }
    }
  },
  false
);

showPlate();

function skip_page() {
	alert("Number test completed! Your score : " + good);
  	window.location.href = "../../index.html";
}
