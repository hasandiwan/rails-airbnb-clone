class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sitter
  belongs_to :calendar
end
