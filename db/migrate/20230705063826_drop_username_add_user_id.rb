class DropUsernameAddUserId < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :user_name, :string
    add_reference :bookings, :customer, index: true
  end
end
