(function() {
  if (window.fx == null) {
    window.fx = {};
  }

  fx.play = function(sound) {
    var audio;
    audio = document.createElement('audio');
    audio.src = fx.samples[sound];
    return audio.play();
  };

  $('.fx-heavy').on('mousedown', function() {
    return fx.play('high');
  });

  $('.fx-heavy').on('mouseup', function() {
    return fx.play('low');
  });

  $('.fx-lite').on('mousedown', function() {
    return fx.play('lite');
  });

}).call(this);
