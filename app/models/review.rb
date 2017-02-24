class Review < ApplicationRecord
  belongs_to :user
  validates :sitter_review, length: { minimum: 20 }

end
