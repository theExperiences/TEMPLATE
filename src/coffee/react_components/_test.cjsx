ul = React.DOM.ul
li = React.DOM.li

lis = for i in [0...3]
  li( null, 'Item: ' + (i + 1) )

root = ul {
  className: 'theul'
}
, li {
  className: 'theli'
}
, 'children ...'

container = document.getElementById( 'target' )
React.render root, container
