resizeListener = require './resizeListener'

module.exports =
  getInitialState: ->
    if @props.initialPageWidth
      pageWidth: @props.initialPageWidth
    else
      {}

  componentDidMount: ->
    # Get current width and set.
    resizeListener.on @onResize

  componentWillUnmount: ->
    resizeListener.off @onResize

  onResize: (pageWidth) ->
    @setState pageWidth: pageWidth
