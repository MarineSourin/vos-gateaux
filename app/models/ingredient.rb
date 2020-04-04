class Ingredient < ApplicationRecord
  has_many :quantites

  validates :nom, uniqueness: true, presence: true
end
