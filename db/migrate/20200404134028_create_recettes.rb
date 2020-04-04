class CreateRecettes < ActiveRecord::Migration[6.0]
  def change
    create_table :recettes do |t|
      t.string :nom
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
