class Hoa < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :users, through: :listings, dependent: :destroy


  # validates :contact, :phone, :email, :community, :address, :city, :state, :zipcode, :website,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true


end
