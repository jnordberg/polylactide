
wrapChars = (element) ->
  for node in element.childNodes
    switch node.nodeType
      when 1
        wrapChars node
      when 3
        container = document.createElement 'span'
        container.className = 'text'
        node.parentNode.replaceChild container, node
        for char in node.textContent
          el = document.createElement 'span'
          el.classList.add 'char'
          if char is ' '
            el.classList.add 'space'
          el.textContent = char
          container.appendChild el
  return

randomPick = (list) -> list[~~(Math.random() * list.length)]

animationClasses = [
  'blink'
  'spin'
  'jump'
]

Polymer
  is: 'x-disco'
  ready: ->
    @scopeSubtree @$.container, true # apparently needed if you want to modify css from scripts
    container = (Polymer.dom @root).querySelector '#container'
    wrapChars container
    for char in container.querySelectorAll 'span.char:not(.space)' then do (char) ->
      char.classList.add randomPick animationClasses
      char.classList.add "duration-#{ ~~(Math.random() * 99) + 1 }"
      char.classList.add "color-#{ ~~(Math.random() * 99) + 1 }"