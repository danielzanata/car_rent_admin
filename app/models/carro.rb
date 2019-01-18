class Carro < ApplicationRecord
  def name
    tipo.try(:humanize)
  end
end
