class Produit < ApplicationRecord
  belongs_to :user
  belongs_to :marque

  validates :titre, presence: true, uniqueness: true
  validates :prix, presence: true, numericality: { only_integer: true }
  validates :stock, presence: true, numericality: { only_integer: true }
  validates :marque_id, presence: true
  validate :marque_exists

  def name
    "#{titre}"
  end

  private
  def marque_exists
    valid = Marque.exists?(self.marque_id)
    self.errors.add(:marque, "la maque n'est pas diponible") unless valid 
  end
end
