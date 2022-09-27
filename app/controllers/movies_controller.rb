class MoviesController < ApplicationController
    def search
      movie_object = Movie.new(params[:query])
      @movies = movie_object.get_movies()
      @thumbs = Thumb.all
    end

  end
  