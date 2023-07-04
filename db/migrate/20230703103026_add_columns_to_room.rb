class AddColumnsToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :room_name, :string
add_column :rooms, :room_description, :string
add_column :rooms, :room_price, :decimal, precision: 10, scale: 2
add_column :rooms, :is_booked, :boolean
  end
end
