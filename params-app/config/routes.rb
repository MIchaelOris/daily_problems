Rails.application.routes.draw do
get '/query_params_url' => 'params_examples#query_params_method'
get 'url_segment_params_url/:this_is_a_varibale' => 'params_examples#segment'
end
