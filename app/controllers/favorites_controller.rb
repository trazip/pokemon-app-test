class FavoritesController < ApplicationController
  before_action :set_pokemon

  def create
    @favorite = Favorite.new(pokemon: @pokemon, user: current_user)
    @favorite.save
  end

  def destroy
    @favorite = Favorite.find_by(pokemon: @pokemon, user: current_user)
    @favorite.destroy
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:pokemon_id])
  end
end
