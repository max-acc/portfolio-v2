function showProjectPopUp(descriptor) {
  var popup = document.getElementById(descriptor);
  popup.classList.toggle("show");

  var body = document.getElementById("body");
  body.classList.toggle("stop-scroll");

  const sections = document.getElementsByClassName("section");
  for (let i = 0; i < sections.length; i++){
    sections[i].classList.toggle("blur");
  }

}
