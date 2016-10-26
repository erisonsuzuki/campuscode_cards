class CardsController < ApplicationController
	def index
		@cards = []
		@cards << 'Português: Cachorro -> Inglês: Dog'
	end
end
