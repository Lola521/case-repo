class AddMarqueToProduits < ActiveRecord::Migration[6.1]
  def change
    add_reference :produits, :marque, index: true
    add_foreign_key :produits, :marques
  end
end
