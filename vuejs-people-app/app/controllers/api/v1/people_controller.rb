class Api::V1::PeopleController < ApplicationController
  def index
    @people = Person.first(2)
    render 'index.json.jbuilder'
  end
end