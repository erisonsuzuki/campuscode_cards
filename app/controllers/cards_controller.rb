class CardsController < ApplicationController
  before_filter :target_card, only: [:edit, :update]
	def index
		@cards = Card.all
	end

  def show
    @card = Card.find_by(id: params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    card = Card.create(card_params)

    redirect_to card_url(card)
  end

  def edit
  end

  def update
    @card.update(card_params)

    redirect_to card_url(@card)
  end

  private

  def target_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:frente, :verso)
  end
end
