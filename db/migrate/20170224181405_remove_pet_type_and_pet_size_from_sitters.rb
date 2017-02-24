class RemovePetTypeAndPetSizeFromSitters < ActiveRecord::Migration[5.0]
  def change
    remove_column :sitters, :pet_type
    remove_column :sitters, :pet_size
  end
end
