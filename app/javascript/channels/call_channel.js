import consumer from "./consumer"

consumer.subscriptions.create( "CallChannel",{

  connected() {
    console.log("connected");
  },

  disconnected() {
    console.log("disconnected");
  },

  received: function(data) {
    console.log(data);
  }
});
