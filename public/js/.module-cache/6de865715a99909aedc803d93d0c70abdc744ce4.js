// Generated by CoffeeScript 1.9.2
(function() {
  var Test, container;

  container = document.getElementById('block');

  Test = React.createClass({displayName: "Test",
    render: function() {
      return React.createElement("div", null, "Hello ",  this.props.name);
    }
  });

  React.render(React.createElement(Test, {name: "Bill"}), container);

}).call(this);
