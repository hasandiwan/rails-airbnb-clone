class CreateJoinTablePetTypesSitters < ActiveRecord::Migration[5.0]
  def change
    create_join_table :pet_types, :sitters do |t|
      t.references :pet_type, foreign_key: true
      t.references :sitter, foreign_key: true
    end
  end
end
