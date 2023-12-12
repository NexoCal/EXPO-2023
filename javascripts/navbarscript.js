function shownav() {
  var x = document.getElementById("NavNav");
  if (x.className === "navhead") {
    x.className = "active";
  } else {
    x.className = "navhead";
  }
}
