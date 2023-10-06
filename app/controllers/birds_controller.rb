class BirdsController < ApplicationController
  def index
    birds = Bird.all 
    render json: birds
  end

  def show
    bird = Bird.find(params[:id])
    render json: bird
  rescue ActiveRcords::RecordNotFound
    render json: "Bird not found", status: :not_found
  end
end
