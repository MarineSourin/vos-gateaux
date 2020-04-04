class Quantite < ApplicationRecord
  belongs_to :recette
  belongs_to :ingredient

  validates :dose, :unite_mesure, presence: true
  validates :recette, presence: true
  validates :ingredient, presence: true
end
