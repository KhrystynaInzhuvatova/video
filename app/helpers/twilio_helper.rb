module TwilioHelper
  def parse_sms(sms)
    body = sms[:Body]&.strip&.upcase
    from = sms[:From]
  end
end
