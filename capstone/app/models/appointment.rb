class Appointment < ApplicationRecord
  belongs_to :user
  has_many :scheduled_showings
  has_many :listings, through: :scheduled_showings
end
