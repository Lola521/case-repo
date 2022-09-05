ActiveAdmin.register User do

  index do
    selectable_column
    column :id
    column :email
    column :name
    column :created_at
    column :admin
    column :nom_boutique
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :nom_boutique
      f.input :email
      f.input :password
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :nom_boutique, :email, :password, :admin

end
