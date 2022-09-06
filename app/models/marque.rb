class Marque < ApplicationRecord
  has_many :produits

  validates :nom_marque, presence: true, uniqueness: true

  def name
    "#{nom_marque}"
  end
end
