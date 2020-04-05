class QuantitesController < ApplicationController
  def new
    @recette = Recette.find(params[:recette_id])
    @quantite = Quantite.new
    @temps = [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80,
  85, 90, 95, 100, 105, 110, 115, 120, 125, 130, 135, 140, 145, 150, 155, 160,
  165, 170, 175, 180, 185, 190, 195, 200, 205, 210, 215, 220, 225, 230, 235,
  240, 245, 250, 255, 260, 265, 270, 275, 280, 285, 290, 295, 300, 310, 320,
  330, 340, 350, 360, 370, 380, 390, 400, 410, 420, 430, 440, 450, 460, 470,
  480, 490, 500, 510, 520]
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
