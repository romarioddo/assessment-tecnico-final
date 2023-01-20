#!/usr/bin/env ruby

require_relative '../lib/notification'

Notification.for(:sms, 'valor da mensagem sms').call
Notification.for(:whatsapp, 'valor da mensagem whatsapp').call
Notification.for(:email, 'valor da mensagem email').call
