class AddPulishToProduits < ActiveRecord::Migration[6.1]
  def change
    add_column :produits, :published, :boolean, null: false, default: true
  end
end
