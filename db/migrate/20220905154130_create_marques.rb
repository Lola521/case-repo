class CreateMarques < ActiveRecord::Migration[6.1]
  def change
    create_table :marques do |t|
      t.string :nom_marque
      t.timestamps
    end
  end
end
