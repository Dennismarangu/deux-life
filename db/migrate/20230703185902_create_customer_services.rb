class CreateCustomerServices < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_services do |t|
      t.integer :customer_id
      t.integer :service_id
      t.date :request_date
      t.integer :quantity
      t.float :total_price

      t.timestamps
    end
  end
end
