# frozen_string_literal: true

class Person < Customer
  # Poderia ser criado um validator para CPF
  validates_cpf :documentation
end