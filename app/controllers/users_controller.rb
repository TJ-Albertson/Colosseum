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

  def show
    @user = User.find(session[:user_id])
    @thumbs = Thumb.where(userId: session[:user_id])

    movie_object = Movie.new(params[:query])
    @movies = movie_object.get_movie()
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end