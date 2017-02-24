class Sitter < ApplicationRecord
  # include PgSearch
  # pg_search_scope :global_search,User
  #   associated_against: {
  #     user: [ :street_address ]
  #     }
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_and_belongs_to_many :pet_types
end
