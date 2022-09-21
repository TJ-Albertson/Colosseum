class ProfileController < ApplicationController
    def index
        @thumbs = Thumb.all
    end
end
