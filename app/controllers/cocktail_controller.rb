class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new()
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def create
  end

  def update
  end

  def delete
  end

end
