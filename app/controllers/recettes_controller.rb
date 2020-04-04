class RecettesController < ApplicationController
  def index
    @recettes = Recette.all
  end

  def show
    @recette = Recette.find(params[:id])
    @ingredients = Ingredient.where(recette: @recette)
    @temps_total = @recette.temps_preparation + @recette.temps_cuisson

    if @recette.difficulte == 0
      @difficulte = "Très facile"
    elsif @recette.difficulte == 1
      @difficulte = "Facile"
    elsif @recette.difficulte == 2
      @difficulte = "Moyen"
    elsif @recette.difficulte == 3
      @difficulte = "Difficile"
    end
  end

  def new
    @recette = Recette.new
  end

  def create
    @recette = Recette.new(recette_params)
    if @recette.save
      redirect_to recette_path(@recette)
    else
      render :new
    end
  end

  def edit
    @recette = Recette.find(params[:id])
  end

  def update
    @recette = Recette.find(params[:id])
    if @recette.update(recette_params)
      redirect_to recette_path(@recette)
    else
      render :edit
    end
  end

  private

  def recette_params
    params.require(:recette).permit(:nom, :photo, :description, :temps_preparation, :temps_cuisson, :nombre_personne, :difficulte)
  end
end
