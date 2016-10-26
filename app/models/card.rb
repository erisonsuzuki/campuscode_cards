class Card < ApplicationRecord
	def to_s
		"frente: #{frente} -> verso: #{verso}"
	end
end
