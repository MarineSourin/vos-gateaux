class SupprimeDescriptionEtAjouteDosePourQuantite < ActiveRecord::Migration[6.0]
  def change
    add_column :quantites, :dose, :integer
    remove_column :quantites, :description, :text
  end
end
