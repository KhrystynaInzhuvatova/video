import consumer from "./consumer"

consumer.subscriptions.create({ channel: "UserUpdateChannel",
  room_id: ""
  }, {
  connected() {
    console.log("connection from user");
  },

  disconnected() {
    console.log("disconnected from user");
  },

  received(data) {
    console.log("received from user");
    console.log(data.room_id);
    $('#users').html(`${data.html}`);
  }
});
