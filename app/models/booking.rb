class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :sitter
  belongs_to :calendar

  private
  def set_price(start_date, end_date)
    (end_date.to_date - start_date.to_date).to_i
  end

end
