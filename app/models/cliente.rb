class Cliente < ApplicationRecord

  rails_admin do

  end

  def name
    nome.try(:humanize)
  end
end
