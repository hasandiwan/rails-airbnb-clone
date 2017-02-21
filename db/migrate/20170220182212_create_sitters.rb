class CreateSitters < ActiveRecord::Migration[5.0]
  def change
    create_table :sitters do |t|
      t.string :pet_size
      t.string :type
      t.integer :fare
      t.integer :missions
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
