class RemovePaymentConditionsToSuppliers < ActiveRecord::Migration
  def change
    remove_column :suppliers, :payment_conditions
  end
end
