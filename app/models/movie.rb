class Movie
    include HTTParty

    def initialize(search)
        if search
            @movie = search
        else
            @movie=""
        end
    end
    
    def get_movies
        response = HTTParty.get('https://api.themoviedb.org/3/search/movie?api_key=' + ENV["TMDB_API_KEY"] + '&language=en-US&query=' + @movie + '&page=1&include_adult=false62f11b24347cc699')
        response["results"]
    end

    def get_movie
        response = HTTParty.get('https://api.themoviedb.org/3/movie/' + @movie + '?api_key=' + ENV["TMDB_API_KEY"] + '&language=en-US')
    end

end
  