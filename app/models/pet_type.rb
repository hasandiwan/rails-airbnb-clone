class PetType < ApplicationRecord
  has_and_belongs_to_many :sitters


  def get_image
    "<span class='#{name} pets'>&nbsp;</span>".html_safe
  end
end
