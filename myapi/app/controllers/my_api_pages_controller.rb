class MyApiPagesController < ApplicationController
    def dog_method
      render json: {message: "Woof Woof"}
  end

def cat_method
      render json: {message: "Meow Meow"}
  end
end 