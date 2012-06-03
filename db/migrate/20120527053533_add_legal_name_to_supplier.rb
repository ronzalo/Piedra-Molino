class AddLegalNameToSupplier < ActiveRecord::Migration
  def change
    add_column :suppliers, :razon_social, :string
    add_column :suppliers, :giro, :string
    add_column :suppliers, :direccion_id, :string
    add_column :suppliers, :telefono, :string
    add_column :suppliers, :representante, :string
    add_column :suppliers, :contacto, :string
    remove_column :suppliers, :observation  
    remove_column :suppliers, :code  
    remove_column :suppliers, :web_page
    remove_column :suppliers, :bank  
    remove_column :suppliers, :account
    remove_column :suppliers, :payment_id  
    rename_column :suppliers, :name, :nombre
    rename_column :suppliers, :legal_id, :rut
       
  end
end
