class AddColumnsToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :service_name, :string, null: false
    add_column :services, :service_cost, :decimal, precision: 8, scale: 2, null: false, default: 0
    add_column :services, :service_description, :text, limit: 255
    add_column :services, :head_of_service, :string, null: false
  end
end
