class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :rut
      t.string :razon_social
      t.string :giro
      t.string :telefono
      t.string :email
      t.string :representante
      t.string :contacto
      t.string :modo_de_pago
      t.integer :credito_asignado
      t.integer :saldo
      t.string :sucursal

      t.timestamps
    end
  end
end
