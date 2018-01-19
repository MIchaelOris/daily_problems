Rails.application.routes.draw do
 get "/one_contact_url" => 'contacts#contact_method'
 get "/all_contacts_url" => 'contacts#all_contacts_method'
end
