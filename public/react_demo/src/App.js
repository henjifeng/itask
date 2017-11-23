import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Welcome to React</h2>
        </div>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
        <div className="container">
          <HelloMessage />
          <LinkButton name="Itask" site="http://www.henjifeng.cc:3000" />
        </div>
      </div>

    );
  }
}

export default App;


var HelloMessage = React.createClass({

  render: function() {
    return <h1>Hello {this.props.name}!</h1>;
  }
});
var WebSite = React.createClass({

  propTypes: {
    name: React.PropTypes.string.isRequired,
  },

  render: function() {
    return (
      <div>
        <Name name = {this.props.name} />
        <Link site = {this.props.site} />
      </div>
    );
  }
});
var Name = React.createClass({
  render: function() {
    return (
      <h1> {this.props.name} </h1>
    );
  }
});
var Link = React.createClass({
  
  render: function() {
    return (  
      <a href={this.props.site}>
        {this.props.site}
      </a>
    );
  }
});
var LinkButton = React.createClass({
  getInitialState: function() {
    return {liked: false};
  },
  handClick: function(event) {
    this.setState({ liked: !this.state.liked });
  },
  render: function() {
    var obj;
    var text = this.state.liked ? ( obj = { name:"Itask", site:"http://www.henjifeng.cc:3000"} ): (  obj = {name:"菜鸟教程", site:"http://www.runoob.com"});

    console.log(text);
    return (
      <div>
        <WebSite {...obj} />
        <p onClick={this.handClick}> 点我切换网址</p>
      </div>
    );
  }
});










