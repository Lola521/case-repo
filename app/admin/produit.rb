ActiveAdmin.register Produit do

  permit_params :titre, :prix, :stock, :marque, :user_id

  index do
    selectable_column
    column :id
    column :titre
    column :prix
    column :stock
    column :marque
    column :user
    column :created_at
    actions
  end

end
