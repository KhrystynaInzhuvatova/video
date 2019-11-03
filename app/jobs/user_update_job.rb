class UserUpdateJob < ApplicationJob
  queue_as :default

  def perform(args)
    users = User.all.map{|u| [name: u.name, id: u.id, online:u.online]}
    html = CallsController.render partial: "calls/users", assigns: {users: users}, layout: nil
    ActionCable.server.broadcast "user_update_channel", html: html
  end
end
