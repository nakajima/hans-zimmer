window.fx = {} unless window.fx?

fx.play = (sound) ->
    audio = document.createElement 'audio'
    audio.src = sound
    audio.play()

$('.fx-heavy').on 'mousedown', ->
  fx.play(fx.samples.high)

$('.fx-heavy').on 'mouseup', ->
  fx.play(fx.samples.low)

$('.fx-lite').on 'mousedown', ->
  fx.play(fx.samples.lite)
