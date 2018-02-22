class TasksController < ApplicationController
  def index
  @tasks = Task.all
  render 'index.json.jbuilder'
end 
end


