class AddStartDateToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :start_date, :datetime
  end
end
