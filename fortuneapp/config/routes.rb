Rails.application.routes.draw do
  get "randomfortune_url" => 'pages#randomfortune_method'
  get "randomnumbers_url" => 'pages#randomnumbers_method' 
  get "visit_url" => 'pages#visit_method'
end
