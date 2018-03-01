class Listing < ApplicationRecord
  validates :agent, presence: true
  validates :address, presence: true
  validates :neighborhood, presence: true
  validates :bedrooms, presence: true
  validates :price, presence: true
  validates :apartment_size, presence: true
  
  has_many :images
  has_many :scheduled_showings
  belongs_to :agent
end 

 
