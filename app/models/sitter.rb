class Sitter < ApplicationRecord
  # include PgSearch
  # pg_search_scope :global_search,User
  #   associated_against: {
  #     user: [ :street_address ]
  #     }
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
