class ProfileController < ApplicationController
    def index
        @thumbs = Thumb.all
    end

    def search
        q = params[:user][:name]
        @users = User.find(:all, :conditions => ["name LIKE %?%",q])
    end
end
