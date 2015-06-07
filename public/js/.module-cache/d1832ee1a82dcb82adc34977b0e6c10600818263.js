container = document.getElementById( 'block' )
Test = React.createClass
  render: () =>
    (
      `<div>Hello { this.props.name }</div>`
    )
React.render `<Test name="Bill" />`, container
