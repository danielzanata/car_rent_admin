class Aluguel < ApplicationRecord
  has_one :carro
  has_one :cliente
  belongs_to :cliente
  belongs_to :carro
end
