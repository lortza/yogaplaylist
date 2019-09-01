alert('hello');
console.log('hello');
document.addEventListener('DOMContentLoaded', function () {
  console.log('hello');
  $(".audioButton").on("click", function() {
    $(".audio-play")[0].currentTime = 0;
    return $(".audio-play")[0].play();
  });
};
