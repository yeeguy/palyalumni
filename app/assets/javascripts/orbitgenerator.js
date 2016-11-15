var wrapper = document.querySelectorAll(".orbit-container")[0];
var imagetemp = document.querySelectorAll(".imagetemp")[0];
var images = imagetemp.getElementsByTagName("img");
var bullets = document.getElementsByClassName("orbit-bullets")[0];
var innerHTMLs = [];

for (var i = 0; i < images.length; i++) {
    console.log(images.length);
    images[i].classList.add("orbit-image");
    innerHTMLs.push("<li class='orbit-slide'>" + images[i].outerHTML + "</li>");
}

while (imagetemp.hasChildNodes()) {
    imagetemp.removeChild(imagetemp.lastChild);
}

//  var hasActive = false;

for (var i = 0; i < innerHTMLs.length; i++) {
    console.log(innerHTMLs[i]);
    //    if (!hasActive){
    //      wrapper.innerHTML += innerHTMLs[i];
    //      bullets.innerHTML += "<button class='is-active' data-slide='" + i + "'></button>";
    //      hasActive = true;
    //    } else {
    wrapper.innerHTML += innerHTMLs[i];
    bullets.innerHTML += "<button data-slide='" + i + "'></button>";
    //    }
}
