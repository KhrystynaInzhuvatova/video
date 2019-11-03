import consumer from "./consumer"

consumer.subscriptions.create("UserUpdateChannel", {
  connected() {
    console.log("connection from user");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log("received from user");
    console.log(data.html);
    $('#users').html(`${data.html}`);
  }
});
