class RenameColumnTypeinTableSitterstoPetType < ActiveRecord::Migration[5.0]
  def change
    rename_column :sitters, :type, :pet_type
  end
end
