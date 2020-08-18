class UsersController < ApplicationController
	before_action :authenticate_user!

  def index
  	@user = current_user
  	@music = Music.new
  end

  def show
  	@music = Music.new
  	@user = User.find(params[:id])
  	@musics = @user.musics
  end

  def edit
  	@user = User.find(params[:id])
  	if @user != current_user
  		redirect_to user_path(current_user.id)
  end
end
  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  		flash[:nitice] = "success"
  		redirect_to user_path(@user.id)
  	else
  		flash[:notice] = "error"
  		render :edit
  	end
  end
  private
  def user_params
  	params.require(:user).permit(:name, :profile_image_id,)
  end
end

