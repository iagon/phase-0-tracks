function addRedBorder(event) {
  console.log("You moused over!")
  event.target.style.border = "4px solid red";
}

var text = document.getElementsByTagName("em");
var t = text[0]
t.addEventListener("mouseover", addRedBorder);






/*
var els = document.getElementsByTagName("em")

var el = els[0]

el.style.border = "6px solid green"

el.addEventListener("")
*/