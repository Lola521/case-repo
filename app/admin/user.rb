ActiveAdmin.register User do

  index do
    selectable_column
    column :id
    column :email
    column :nom_boutique
    column :created_at
    column :admin
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
