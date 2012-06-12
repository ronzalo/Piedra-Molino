class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nombre, :null => true
      t.timestamps
    end
  end
end
