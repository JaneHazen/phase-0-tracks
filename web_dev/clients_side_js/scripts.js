// Practice function to add a pink border


// function addPinkBorder() {
//   var theImage = document.getElementById('picture');
//   theImage.style.border = "2px solid pink";
// }

// var theImage = document.getElementById('picture');
// theImage.addEventListener("click", addPinkBorder);

// function that switches image into a fire-flower when clicked

function switchimage() {
  var theImage = document.getElementById('picture');
  theImage.src = "images/fire_flower_1-t2.jpg"
}

var theImage = document.getElementById('picture');
theImage.addEventListener("click", switchimage);