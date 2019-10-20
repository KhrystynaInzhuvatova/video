import React from "react"
import User from "./User"
import axios from "axios"
import PropTypes from "prop-types"

class App extends React.Component {
  constructor(props){
    super(props);
    this.state={
      users: this.props.data
    }
    this.shoot = this.shoot.bind(this)
    }
    shoot () {
      axios({
        method: 'GET',
        url: `/users`,
        headers: {
          'X-CSRF-Token': document.querySelector("meta[name=csrf-token]").content
        }
        })
        .then(response=> {this.setState({users: []})})
        .catch(function(error) {console.log(error)}
        )
    }

    componentDidMount() {
      document.getElementById("p").addEventListener('click', this.shoot);

    }

  render () {
    const users = this.state.users.map(user =>
      user.map(user =>
      <User name={user.name} key={user.id} id={user.id} online={user.online}/>
    )
    );


    return (
      <React.Fragment>
      <div className="container">
        <div className="row">
        {users}
        </div>
      </div>
      </React.Fragment>
    );
  }
}

App.propTypes = {
  data: PropTypes.array
};
export default App
