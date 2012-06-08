class CreateProductGuia < ActiveRecord::Migration
  def change
    create_table :product_guia do |t|
      t.integer :guia_despacho_id
      t.integer :product_id
      t.integer :cantidad
      t.integer :sub_total
      t.timestamps
    end
  end
end
