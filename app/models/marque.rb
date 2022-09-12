class Marque < ApplicationRecord

  has_many :produits, dependent: :nullify

  validates :nom_marque, presence: true, uniqueness: true

  def name
    nom_marque
  end

end
