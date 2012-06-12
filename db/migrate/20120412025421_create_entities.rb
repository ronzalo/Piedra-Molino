class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entidad do |t|
      t.string :rut,  :null => true
      t.string :razon_social
      t.string :giro
      t.string :nombre
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :telefono
      t.string :email
      t.string :contacto
      t.string :type
#      t.timestamps
    end
  end
end
