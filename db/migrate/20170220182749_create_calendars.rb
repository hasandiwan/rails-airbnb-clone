class CreateCalendars < ActiveRecord::Migration[5.0]
  def change
    create_table :calendars do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :available
      t.references :sitter, foreign_key: true

      t.timestamps
    end
  end
end
