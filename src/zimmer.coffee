window.fx = {} unless window.fx?

fx.play = (sound) ->
  audio = document.createElement 'audio'
  audio.src = fx.samples[sound]
  audio.play()

$('.fx-heavy').on 'mousedown',  -> fx.play('high')
$('.fx-heavy').on 'mouseup',    -> fx.play('low')
$('.fx-lite').on 'mousedown',   -> fx.play('lite')
