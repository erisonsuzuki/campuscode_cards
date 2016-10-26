class CardsController < ApplicationController
	def index
		@cards = Card.all
	end

  def show
    @card = Card.find_by(id: params[:id])
  end

  def new
  end

  def create
    Card.create(frente: params[:frente], verso: params[:verso])

    redirect_to root_path
  end
end
