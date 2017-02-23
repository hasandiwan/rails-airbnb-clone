class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sitter
  belongs_to :calendar

  # private
  # def set_price
  # end
end
