React = require('react')
{Container} = require 'react-responsive-grid'
Headroom = require 'react-headroom'
colorPicker = require 'color-pairs-picker'
PageWidthMixin = require '../src/'
throttle = require 'lodash.throttle'
chroma = require 'chroma-js'
colorScale = chroma.scale('OrRd')

PageWidthReporter = React.createClass
  mixins: [PageWidthMixin]

  getInitialState: ->
    color: colorScale(Math.random())
    offset: Math.random()*5

  render: ->
    {bg: bg, fg: fg} = colorPicker(@state.color, contrast: 6)

    <div
      style={{
        background: bg
        color: fg
        display: 'inline-block'
        width: 100
        height: 100
        textAlign: 'center'
        lineHeight: "100px"
        margin: 5
      }}
    >
      {@state.pageWidth}
    </div>


module.exports = React.createClass
  mixins: [PageWidthMixin]

  render: ->
    <div>
      <Container style={
        maxWidth:'1000px'
        padding: @props.rhythm(1.5)
      }>
        <h1>React Page Width mixin</h1>
        <h3>Resize your browser!</h3>
        <a href="https://github.com/KyleAMathews/react-page-width">Code on Github</a>
        <br />
        <br />
        <p>Current page width: {@state.pageWidth}</p>
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />
        <PageWidthReporter />

      </Container>
    </div>
