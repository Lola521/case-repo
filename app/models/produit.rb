class Produit < ApplicationRecord
  MARQUE = Marque.all
  belongs_to :user
  belongs_to :marque

  validates :titre, presence: true
  validates :prix, presence: true, numericality: { only_integer: true }
  validates :stock, presence: true, numericality: { only_integer: true }
  validates :marque, presence: true

  def name
    "#{titre}"
  end

end
