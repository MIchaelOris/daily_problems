class User < ApplicationRecord
  has_secure_password
  has_many :scheduled_showings
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :cell, presence: true
  validates agent: false
  

  def appointment
    scheduled_showings.where(status: "scheduled")
  end 
end
