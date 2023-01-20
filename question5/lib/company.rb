# frozen_string_literal: true

class Company < Customer
  # Poderia ser criado um validator para CNPJ
  validates_cnpj :documentation
end
