class Produit < ApplicationRecord
  belongs_to :user

  validates :titre, presence: true, uniqueness: true
  validates :prix, presence: true, numericality: { only_integer: true }
  validates :stock, presence: true, numericality: { only_integer: true }
  validates :marque, presence: true

  def name
    "#{titre}"
  end
end
