class DropFamiliesTable < ActiveRecord::Migration
  def up
    drop_table :families
  end

  def down
  end
end
