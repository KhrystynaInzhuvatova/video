# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  after_action :after_log_in_out, :only => [:create]
  before_action :after_log_in_out, :only => [:destroy]
  after_action :send_sms, :only => [:create]
  after_action :voice, :only => [:create]
  def destroy
    current_user.update_attribute(:last_sign_out_at, Time.now)
    super
  end

  private

  def after_log_in_out
    UserUpdateJob.perform_later(current_user)
  end

  def send_sms
    SendSmsJob.perform_later(current_user.id)
  end

  def voice
    SendSmsJob.perform_later(current_user.id)
  end

end
