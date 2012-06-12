class CreatePayments < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.string :nombre, :null => false

      t.timestamps
    end
  end
end
