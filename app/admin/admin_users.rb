ActiveAdmin.register AdminUser do
#  menu :if => proc{ can?(:manage, AdminUser) }     
#  controller.authorize_resource  

  index do
    selectable_column
    column :email
    column :role
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end
  
  form do |f|
    f.inputs "Detalles Admin" do
      f.input :email
      f.input :role, :collection => AdminUser::ROLES
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
  
  show do |user|
    attributes_table do
      row :email
      row :role
      row :last_sign_in_at
      row :sign_in_count
    end
    
  end
  
  filter :email
end