// Generated by CoffeeScript 1.9.2
(function() {
  var Test, container;

  container = document.getElementById('target');

  React.render(React.createElement(Test, {name: "Bill"}), container);

  Test = React.createClass({displayName: "Test",
    render: function() {
      return React.createElement("div", null, "Hello ",  this.props.name);
    }
  });

}).call(this);
