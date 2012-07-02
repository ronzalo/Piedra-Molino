ActiveAdmin.register AdminUser do
#  menu :if => proc{ can?(:manage, AdminUser) }     
#  controller.authorize_resource  

  index :download_links => false do
    selectable_column
    column :email
    column :rol
    default_actions
  end
  
  form do |f|
    f.inputs "Detalles Admin" do
      f.input :email
      f.input :rol, :collection => AdminUser::ROLES
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  
  show do |user|
    attributes_table do
      row :email
      row :rol
      row :last_sign_in_at
    end
    
  end
  
  filter :email
  filter :rol, :label => "Por Rol", :as => :select, :collection => AdminUser::ROLES
end
