class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :sitter_grade
      t.string :sitter_review
      t.string :owner_review
      t.references :user, foreign_key: true
      t.references :sitter, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
