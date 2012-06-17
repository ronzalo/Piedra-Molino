class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.string :rut, :null => true
      t.string :razon_social, :null => true
      t.string :giro, :null => true
      t.string :email, :null => true
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :telefono
      t.integer :saldo
      t.string :modo_pago
      t.integer :credito_asignado
      t.string :contacto

      t.timestamps
    end
  end
end
