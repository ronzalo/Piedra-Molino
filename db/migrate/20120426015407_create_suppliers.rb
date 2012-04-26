class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :legal_id
      t.string :name
      t.text :observation
      t.string :code
      t.string :web_page
      t.string :payment_conditions
      t.string :bank
      t.string :account

      t.timestamps
    end
  end

end
