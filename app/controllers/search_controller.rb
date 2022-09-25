class SearchController < ApplicationController
  def index
    movie_object = Search.new(params[:search])
    @movies = movie_object.get_movies()
  end
end
