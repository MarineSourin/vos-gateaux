class QuantitesController < ApplicationController
  def new
    @recette = Recette.find(params[:recette_id])
    @quantite = Quantite.new
  end

  def create
    @recette = Recette.find(params[:recette_id])
    @quantite = Quantite.new(quantite_params)
    @quantite.recette = @recette
    if @quantite.save
      redirect_to recette_path(@recette)
    else
      render :new
    end
  end

  def destroy
    @quantite = Quantite.find(params[:id])
    @recette = @quantite.recette
    @quantite.destroy

    redirect_to recette_path(@recette)
  end

  private

  def quantite_params
    params.require(:quantite).permit(:dose, :unite_mesure, :ingredient_id)
  end
end
