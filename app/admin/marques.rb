ActiveAdmin.register Marque do

  permit_params do
   permitted = [:nom_marque]
   permitted << :other if params[:action] == 'create' && current_user.admin?
   permitted
  end

  index do
    selectable_column
    column :id
    column :nom_marque
    column :created_at
    actions
  end

end
