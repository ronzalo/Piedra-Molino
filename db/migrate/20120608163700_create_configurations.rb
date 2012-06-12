class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configuraciones do |t|
      t.string :nombre, :null => false
      t.string :valor, :null => false

      t.timestamps
    end
    
    Configuration.create!(:nombre => 'IVA', :valor => '0.19')
  end
end
