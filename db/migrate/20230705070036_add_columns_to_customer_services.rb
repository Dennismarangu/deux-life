class AddColumnsToCustomerServices < ActiveRecord::Migration[6.1]
  def change
    add_column :customer_services, :service_id, :integer
    add_column :customer_services, :request_date, :date
    add_column :customer_services, :quantity, :integer
    add_column :customer_services, :total_price, :float
  end
end
