class Review < ApplicationRecord
  belongs_to :user
  belongs_to :sitter
  belongs_to :booking
  validates :content, length: { minimum: 20 }
end
