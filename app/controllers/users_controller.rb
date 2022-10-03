class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else  
      redirect :new
    end
  end

  def movie
    movie_object = Movie.new(params[:query])
    @movies = movie_object.get_movie()
  end

  def show
    @icons = [
      "fa-solid fa-robot",
      "fa-solid fa-mug-saucer",
      "fa-solid fa-ghost",
      "fa-solid fa-ice-cream",
      "fa-solid fa-guitar",
      "fa-solid fa-basketball",
      "fa-solid fa-flask",
      "fa-solid fa-fire",
      "fa-solid fa-camera-retro",
      "fa-solid fa-clapperboard",
      "fa-solid fa-ticket",
      "fa-solid fa-video",
      "fa-solid fa-atom",
      "fa-solid fa-rocket",
      "fa-solid fa-user-astronaut"
    ]
    
    @colors = [
      "#CB4335",
      "#7D3C98",
      "#2E86C1",
      "#28B463",
      "#D68910"
    ]
    @id = params[:id]
    @user = User.find(params[:id])

    if params[:query].blank?
      @thumbs = Thumb.where(userId: params[:id])
    else
      @thumbs = Thumb.where("lower(name) LIKE :query", query: "%#{params[:query].downcase}%", id: params[:id])
    end
  end

  def search
    if params[:query].blank?
      @users = User.all
    else
      @users = User.where("lower(username) LIKE :query", query: "%#{params[:query].downcase}%")
    end
  end 

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end