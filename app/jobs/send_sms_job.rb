require 'twilio-ruby'
class SendSmsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @client = Twilio::REST::Client.new ENV['account_sid'], ENV['auth_token']
    @client.messages.create(
      from: ENV['number_from'],
      to: ENV['number_to'],
      body: 'Hey there!'
    )
  end
end
