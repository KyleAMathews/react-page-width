raf = require 'raf'

currentWidth = undefined
subscribers = []
ticking = false

if window?
  currentWidth = window.innerWidth

onResize = ->
  unless ticking
    ticking = true
    raf(update)

update = ->
  currentWidth = window.innerWidth
  for subscriber in subscribers
    subscriber(currentWidth)
  ticking = false

if window?
  window.addEventListener("resize", onResize)

module.exports = {
  on: (subscribeFn) ->
    subscribeFn(currentWidth)
    subscribers.push subscribeFn

  off: (subscribeFn) ->
    subscribers.splice(subscribers.indexOf(subscribeFn), 1)
}
