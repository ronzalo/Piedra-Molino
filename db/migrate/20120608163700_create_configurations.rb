class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :nombre
      t.string :valor

      t.timestamps
    end
    
    Configuration.create!(:nombre => 'IVA', :valor => '0.19')
  end
end
