class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token

  def sms
    body = helpers.parse_sms(params)
    response = Twilio::TwiML::MessagingResponse.new do |r|
      r.message body: body
    end
    render xml: response.to_s
  end

def voice
  Twilio::TwiML::VoiceResponse.new do |r|
		r.say(message: "Thank you for calling! Have a great day.")
	end.to_s
end

end
