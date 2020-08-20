function playTracks(holdTimeInput, speakTimeBuffer, audioTracks){
  // document.addEventListener('DOMContentLoaded', function () {
    const posesList = document.getElementById('table')
    const finishNotice = '<h1>Namaste, bruh.</h1>';
    const holdTime = (holdTimeInput + speakTimeBuffer) * 1000;
    const button = document.getElementById('button-play')
    button.addEventListener('click', function(e) {
      event.preventDefault;

      console.log('Begin!');
      audioTracks.forEach(function(item, index, array) {
        setTimeout( (function( index ) {
          return function() {
            const activePose = document.getElementById(item.id)
            if (activePose){
              activePose.classList.add('active-row')
            }
            if (item.audio_file){
              console.log(`playing: ${item.audio_file}`);
              const track = new Audio(`/audio_files/${item.audio_file}`);
              track.play().catch(e => { console.log(e); });
              if (!item.id){
                // This has never actually displayed. Dunno why.
                posesList.insertAdjacentHTML('afterend', finishNotice);
                console.log('The End. Namaste.')
              }
            }
          };
        }(index)), (holdTime * index) );
      });

    });// onclick
  // }); //DOMContentLoaded
};// playTracks
