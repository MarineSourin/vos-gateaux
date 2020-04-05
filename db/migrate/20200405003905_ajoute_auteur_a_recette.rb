class AjouteAuteurARecette < ActiveRecord::Migration[6.0]
  def change
    add_column :recettes, :auteur, :string
  end
end
