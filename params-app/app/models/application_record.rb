class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

  def query_params_method
    input_message = params["my_message"]
    input_message_2 = params["my_message_2"]
    render json: {message: input_message, message_2: input_message_2}
  end
end 