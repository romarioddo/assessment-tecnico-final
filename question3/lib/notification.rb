# frozen_string_literal: true

require_relative "./notification/whatsapp.rb"
require_relative "./notification/sms.rb"
require_relative "./notification/email.rb"

module Notification
  PROVIDERS = [
    Notification::Sms,
    Notification::Whatsapp,
    Notification::Email
  ]

  def self.for(message)
    PROVIDERS.each { |provider| provider.new(message).call }
  end
end
