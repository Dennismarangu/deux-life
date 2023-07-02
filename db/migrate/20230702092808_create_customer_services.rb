class CreateCustomerServices < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_services do |t|

      t.timestamps
    end
  end
end
