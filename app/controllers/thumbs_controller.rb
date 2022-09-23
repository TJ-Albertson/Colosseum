class ThumbsController < ApplicationController
    def index
        @thumbs = Thumb.all
    end
end
