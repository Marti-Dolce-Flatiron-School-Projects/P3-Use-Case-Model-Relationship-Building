class Listing < ApplicationRecord
  # Using a length validation for the listing summary
  # SRC: https://github.com/mhartl
  belongs_to :user
  belongs_to :hoa
  validates :description, presence: true, length: { maximum: 150 }
  end