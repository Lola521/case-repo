class AddNomBoutiqueToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nom_boutique, :string
  end
end
