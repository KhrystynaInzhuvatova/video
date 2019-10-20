import consumer from "./consumer"

consumer.subscriptions.create( "CallChannel",{

  connected() {
    console.log("connected");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log("received");
    console.log(data);
  }
});
