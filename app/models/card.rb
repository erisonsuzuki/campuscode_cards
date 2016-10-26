class Card < ApplicationRecord
  def cardinal
    "##{id} - #{frente}"
  end

	def to_s
		"#{frente} -> #{verso}"
	end
end
