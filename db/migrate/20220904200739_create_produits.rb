class CreateProduits < ActiveRecord::Migration[6.1]
  def change
    create_table :produits do |t|
      t.string :titre
      t.integer :prix
      t.integer :stock
      t.string :marque
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
