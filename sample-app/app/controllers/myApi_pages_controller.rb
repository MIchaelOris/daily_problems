class PagesController < ApplicationController
    def Dog_method
      render json: {message: "Woof Woof"}
  end

def Cat_method
      render json: {message: "Meow Meow"}
  end
end 