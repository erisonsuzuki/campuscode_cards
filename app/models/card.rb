class Card < ApplicationRecord
  def to_s
    "##{id} - #{frente}"
  end

  def name
    "##{id} - #{frente} -> #{verso}"
  end
end
