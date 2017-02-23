module BookingsHelper

  def set_days(start_date, end_date)
    (end_date.to_date - start_date.to_date).to_i
  end

end
