# frozen_string_literal: true

require_relative "../notification.rb"

module Notification
  class Email
    attr_reader :message

    def initialize(message)
      @message = message
    end

    def call
      puts "#{self.class} | envia mensagem: #{@message}"
    end
  end
end
