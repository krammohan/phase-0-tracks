console.log("Script is running");

function changeBackgroundColor(event) {
  console.log("clicked");
  console.log(event);
  event.target.style.background-color = "red";
}

var x = document.getElementById("greeting");
x.addEventListener("click", changeBackgroundColor);