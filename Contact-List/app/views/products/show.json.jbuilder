json.array! @contacts.each do |contact|

json.first_name @contact.first_name
json.middle_name @contact.middle_name
json.last_name @contact.last_name
json.email @contact.email
json.bio @contact.bio
json.phone_number @contact.phone_number
json.supplier_name @product.supplier

end 
