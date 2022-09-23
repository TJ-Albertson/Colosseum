class ThumbsController < ApplicationController
    def index
        @thumbs = Thumb.all
    end

    def profile
        @thumbs = Thumb.find(params[:userId])
    end

    def new
        @thumb = Thumb.new
    end

    def create
        @thumb = Thumb.new(thumb_params)
    end

    private
        def article_params
            params.require(:article).permit(:name, :tmdbId, :userId, :thumb)
        end
end
