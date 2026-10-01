class PokeballsController < ApplicationController
  def create
    pokeball = Pokeball.new(pokeball_params)
    @pokemon = Pokemon.find(params[:pokemon_id])
    pokeball.pokemon = @pokemon
    if pokeball.save
      redirect_to trainer_path(pokeball.trainer)
    else
      redirect_to pokemon_path(@pokemon), status: :unprocessable_entity
    end
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:trainer_id, :location, :caught_on)
  end
end
