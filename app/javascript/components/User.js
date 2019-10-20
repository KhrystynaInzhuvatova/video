import React from "react"
import VideoCall from "./VideoCall"
import axios from "axios"
import PropTypes from "prop-types"
class User extends React.Component {
  constructor(props){
    super(props);
    this.state ={
    name:  this.props.name,
    id: this.props.id,
    online: this.props.online
       }

  }

render () {
    const divStyle = {
      "width": "18rem"
    }
    return (
      <React.Fragment>
          <div className="col-sm-4">
            <div className="card" style={divStyle}>
              <div className="card-body">
                <div className="card-text">{String(this.state.online)}</div>
                <div className="card-text">{this.state.id}</div>
              </div>
             </div>
            </div>
        </React.Fragment>
    );
  }
}

User.propTypes = {
  info: PropTypes.array
};
export default User
