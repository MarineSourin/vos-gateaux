class CreateQuantites < ActiveRecord::Migration[6.0]
  def change
    create_table :quantites do |t|
      t.text :description
      t.references :recette, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
