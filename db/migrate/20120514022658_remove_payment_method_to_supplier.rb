class RemovePaymentMethodToSupplier < ActiveRecord::Migration
  def change
  	remove.column :suppliers, :payment_conditions  	
  end
end
