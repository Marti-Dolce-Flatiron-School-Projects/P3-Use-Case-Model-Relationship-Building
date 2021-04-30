class User < ApplicationRecord
  validates :fname, :lname, :email, presence: true
end
