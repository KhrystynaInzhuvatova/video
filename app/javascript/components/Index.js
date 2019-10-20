import React from "react"
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import App from "./App"
import PropTypes from "prop-types"
class Index extends React.Component {
  render () {
    return (
      <Router>
      <Switch>
          <Route exact path="/" render={()=> <App data= {this.props.users}/>} />
      </Switch>
    </Router>
    );
  }
}

Index.propTypes = {
  users: PropTypes.array
};
export default Index
