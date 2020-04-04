class Recette < ApplicationRecord
  has_one_attached :photo
  has_many :quantites, dependent: :destroy
  has_many :ingredients, through: :quantites

  validates :nom, :description, :temps_preparation, :temps_cuisson, :nombre_personne, :difficulte, presence: true
end
