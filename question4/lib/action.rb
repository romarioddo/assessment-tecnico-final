# frozen_string_literal: true

class Action
  TYPES = {
    "TIPO1" => -> { puts "Executa ação TIPO1" },
    "TIPO2" => -> { puts "Executa ação TIPO2" },
    "TIPO3" => -> { puts "Executa ação TIPO3" },
    "TIPO4" => -> { puts "Executa ação TIPO4" },
    "TIPO5" => -> { puts "Executa ação TIPO5" },
    "TIPO6" => -> { puts "Executa ação TIPO6" }
  }

  def initialize(type)
    @type = type
  end

  def call
    type_lambda = TYPES[@type]
    raise 'Type not supported' unless type_lambda

    type_lambda.call
  end
end
