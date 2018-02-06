class ArticlesController < ApplicationController
  def index
    search_term = params[:search]
    @articles = Unirest.get("https://api.nytimes.com/svc/search/v2/articlesearch.json?api-key=#{ENV["API_KEY"]}").body
    render json: @articles
  end
end
