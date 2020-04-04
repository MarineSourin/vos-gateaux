class AjouteTempsPersonneEtDifficulteARecette < ActiveRecord::Migration[6.0]
  def change
    add_column :recettes, :temps_preparation, :integer
    add_column :recettes, :temps_cuisson, :integer
    add_column :recettes, :nombre_personne, :integer
    add_column :recettes, :difficulte, :integer
  end
end
