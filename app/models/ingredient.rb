class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true

  def ingredient_name
    "Nome do Ingrediente: #{name}"
  end
end
