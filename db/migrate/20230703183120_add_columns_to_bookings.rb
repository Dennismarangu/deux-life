class AddColumnsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :user_name, :string
    add_column :bookings, :room_id, :integer
    add_column :bookings, :check_in_date, :date
    add_column :bookings, :check_out_date, :date
  end
end
