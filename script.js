// Set the date we're counting down to
var countDownDate = new Date("Dec 1, 2020 12:00:00").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";
    
  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);

// SLIDE SHOW FOR THE PRODUCT PAGE
let image = [ '../Assets/images/items.png', '../Assets/images/green.png', '../Assets/images/blue.png', 
'../Assets/images/red.png', '../Assets/images/orange.png'];
let prevBtn = document.querySelector('#prev');
let nextBtn = document.querySelector('#next');
let slideShow = document.querySelector('#slide');
let currentIndex = 0;

nextBtn.onclick = function() {
  console.log('working');
    currentIndex++;
    slideShow.src = image[currentIndex];
    if (currentIndex > images.length - 1) {currentIndex = 0}
    return currentIndex;
};
prevBtn.onclick = function() {
  console.log('working');
    currentIndex--;
    slideShow.src = image[currentIndex];
    if (currentIndex < 0) {currentIndex = images.length - 1}
    return currentIndex;
};