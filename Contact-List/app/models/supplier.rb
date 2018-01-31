class Supplier < ApplicationRecord
  def contacts
    has_many :contacts
end
