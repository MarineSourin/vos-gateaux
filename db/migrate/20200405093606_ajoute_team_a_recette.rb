class AjouteTeamARecette < ActiveRecord::Migration[6.0]
  def change
    add_column :recettes, :team, :string
  end
end
