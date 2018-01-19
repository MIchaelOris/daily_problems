Rails.application.routes.draw do
  get "/dog_url" => "my_api_pages#dog_method"
  get "/cat_url" => "my_api_pages#cat_method"
end