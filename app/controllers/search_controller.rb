class SearchController < ApplicationController
  def index
    movie_object = Search.new(params[:query])
    @movies = movie_object.get_movies()
  end
end
