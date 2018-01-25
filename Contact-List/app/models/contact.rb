class Contact < ApplicationRecord
  validates first_name:, presence: true
  validates last_name:, presence: true
  validates email:, uniqueness: true
  validates email:, format: 


  def friendly_updated_at
    updated_at.strftime("%m/%d/%Y")
  end 

  def full_name
  "#{first_name} #{middle_name}" #{last_name}".titleize
  end

  def japan_phone_number
    "+81 #{phone_number}"
  end 


  def as_json
    {
                  id: id,
                  firstname: first_name,
                  middle_name: middle_name,
                  lastname: last_name,
                  full_name: full_name,
                  email: email,
                  phonenumber: phone_number,
                  updated_at: friendly_updated_at,
                  bio: bio
                  }
  end

end 
