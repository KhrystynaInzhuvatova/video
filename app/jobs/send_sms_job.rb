require 'twilio-ruby'
class SendSmsJob < ApplicationJob
  queue_as :default

  #def perform(args)
  #  @client = Twilio::REST::Client.new ENV['account_sid'], ENV['auth_token']
  #  @client.messages.create(
  #    from: ENV['number_from'],
  #    to: ENV['number_to'],
  #    body: "Hey there! http://5f2fee67.ngrok.io/unsibscribe/#{args}"
  #  )
  #end

  def perform(args)
    @client = Twilio::REST::Client.new(ENV["account_sid"], ENV["auth_token"])
    call = @client.calls.create(
      to: ENV["number_to"],
      from: ENV["number_from"],
      url: "http://demo.twilio.com/docs/voice.xml")
   puts call.to
  end

end
