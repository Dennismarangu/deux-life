class AddColumnsToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :email, :string
    add_column :customers, :phone, :string
    add_column :customers, :password_digest, :string
  end
end
