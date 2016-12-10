### Application entrypoint. ###

require 'webcomponents.js'

window.addEventListener 'WebComponentsReady', ->
  console.log 'Components ready!'