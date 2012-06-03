ActiveAdmin.register AdminUser do
  index do
    selectable_column
    column :email
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end
  
  form do |f|
    f.inputs "Detalles Admin" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
  
  show do |user|
    attributes_table do
      row :email
      row :last_sign_in_at
      row :sign_in_count
    end
    
  end
  
  filter :email
end
