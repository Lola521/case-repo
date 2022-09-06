ActiveAdmin.register Produit do

  permit_params :titre, :prix, :stock, :marque_id, :user_id

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

  form do |f|
    f.inputs "Identity" do
      f.input :user
    end
    f.inputs "Detail" do
      f.input :marque
      f.input :titre
      f.input :prix
      f.input :stock
    end
    f.actions
  end

end
