class CreateClients < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut, :null => true
      t.string :nombre, :null => true
      t.string :apellido, :null => true
      t.string :empresa, :null => true
      t.string :email
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :telefono
      t.integer :saldo
      t.string :modo_pago
      t.integer :credito_asignado

      t.timestamps
    end
  end
end
