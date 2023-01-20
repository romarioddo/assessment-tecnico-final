#!/usr/bin/env ruby

require_relative '../lib/reporter'

puts "Qual arquivo você deseja salvar?"
puts "JSON"
puts "CSV"

option = gets
option = option.chomp

reporter = Reporter.new
reporter.generateReport(option)
