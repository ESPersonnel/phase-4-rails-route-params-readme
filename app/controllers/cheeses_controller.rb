class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # Find a cheese using the id from the URL
    # Send a JSON response with the cheese
    cheese = Cheese.find(params[:id])
    render json: cheese
    # Using find_by_id is the same as using find
    # cheese = Cheese.find_by_id(params[:id])
  end

end
