class UserController < ApplicationController
    def profile
        @user = User.find(params[:id])
        @thumbs = Thumb.find(params[:userId])
    end

    def search
        @users = User.search(params[:query])
    end

  end