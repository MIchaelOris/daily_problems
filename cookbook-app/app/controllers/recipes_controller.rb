class RecipesController < ApplicationController
  def index

    recipes = Recipe.all
    render json: recipes.as_json
  end

  def create 
    recipe = Recipe.new(
                        title: params[:title], 
                        chef: params[:chef], 
                        ingredients: params[:ingredients], 
                        directions: params[:directions]
                        )
    recipe.save
    render json: recipes.as_json
  end 


  def show
    input_id = params[:id]
    recipe = Recipe.first
    render json: recipes.as_json
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.title = params[:title]
    recipe.chef =params[:chef]
    recipe.ingredients =params[:ingredients]
    recipe.directions =params[:directions]
    recipe.save

    render json: recipes.as_json

  end 

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: {message: "Succesfully destroyed Recipe ##{recipe.id}."}
  end

end  

