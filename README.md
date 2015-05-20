# react-page-width
High performance React mixin so a component can always know the current page width.

Creates only one window resize event listener so 100s of components can
easily listen in to page width changes.

## Install
`npm install react-page-width`

## Usage
```javascript
var PageWidthMixin = require('react-page-width')

module.exports = React.createClass({
  mixins: [PageWidthMixin],
  render: function() {
    // this.state.pageWidth is available!
    if (this.state.pageWidth > 700) {
      <div>Big page</div>
    }
    else {
      <div>Small page</div>
    }
  }
})
```

## Server side rendering
You can also pass in an `initialPageWidth` value so a value is available
for server side rendering.
