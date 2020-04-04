class AjouteUniteMesureAQuantite < ActiveRecord::Migration[6.0]
  def change
    add_column :quantites, :unite_mesure, :string
  end
end
