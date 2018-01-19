Rails.application.routes.draw do
  get "hello_url" => 'pages#hello_method'
  get "/goodbye_url" => 'pages#goodbye_method'# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end