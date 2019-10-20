import React from "react"
import VideoCall from "./VideoCall"
import axios from "axios"
import PropTypes from "prop-types"
class CurrentUser extends React.Component {
  constructor(props){
    super(props);
    this.state ={
    name:  this.props.current.name,
    id: this.props.current.id,
    online: this.props.current.online
       }

  }


render () {
    const divStyle = {
      "width": "30rem"
    }
    return (
      <React.Fragment>
            <div className="card" style={divStyle}>
              <div className="card-body">
                <div className="card-text">{String(this.state.online)}</div>
                <div className="card-text">{this.state.id}</div>
              </div>
            <VideoCall id= {this.state.id}/>
            </div>
        </React.Fragment>
    );
  }
}

CurrentUser.propTypes = {
  current: PropTypes.object
};
export default CurrentUser
