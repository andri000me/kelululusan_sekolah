const sidedrawer = document.querySelector(".sidedrawer");
const backdrop = document.querySelector(".backdrop");
const bars = document.getElementById("bars");

bars.addEventListener("click", () => {
  sidedrawer.classList.add("active");
  backdrop.classList.add("show");
});

backdrop.addEventListener("click", () => {
  sidedrawer.classList.remove("active");
  backdrop.classList.remove("show");
});

// showcase part
const showcaseImageContainer = document.getElementById("showcase-image");
const indicators = document.querySelectorAll(".indicator");
console.log(indicators);
// <img src="assets/portfolio1.png" alt="" />
let images = [1, 2, 3, 4];

window.onload = () => {
  let i = 1;
  renderImage(1);
  // setInterval(() => {
  //   if (i > 4) {
  //     i = 1;
  //   }
  //   renderImage(i);
  //   i++;
  // }, 2000);
};

for (const indicator of indicators) {
  indicator.addEventListener("click", (e) => {
    renderImage(e.target.id);
  });
}

function renderImage(imageNum) {
  let imageHTMl = ``;

  for (const indicator of indicators) {
    if (imageNum === indicator.id) {
      indicator.classList.add("active");
    } else {
      indicator.classList.remove("active");
    }
  }

  showcaseImageContainer.innerHTML = `<img src="assets/portfolio${imageNum}.png" alt="" />`;
}

// showcase part
