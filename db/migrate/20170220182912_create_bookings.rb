class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :sitter, foreign_key: true
      t.references :calendar, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
