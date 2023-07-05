class AddReferencesToCustomerService < ActiveRecord::Migration[6.1]
  def change
    remove_column :customer_services, :customer_id, :integer
    add_reference :customer_services, :customer, index: true
  end
end
