class AddPaymentIdToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :payment_id, :integer
  end
end
