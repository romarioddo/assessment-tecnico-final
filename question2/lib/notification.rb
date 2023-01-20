# frozen_string_literal: true

require_relative "./notification/whatsapp.rb"
require_relative "./notification/sms.rb"
require_relative "./notification/email.rb"

module Notification
  PROVIDERS = {
    sms: Notification::Sms,
    whatsapp: Notification::Whatsapp,
    email: Notification::Email
  }.freeze

  def self.for(format, message)
    provider = PROVIDERS[format]
    raise "Format not supported" unless provider

    provider.new(message)
  end
end
