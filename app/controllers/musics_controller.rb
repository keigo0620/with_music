class MusicsController < ApplicationController
	before_action :authenticate_user!

  def new
  	@music = Music.new
  end

  def index
  	@user = current_user
  	@musics = Music.all
  	@music = Music.new
  end

  def show
  	@music = Music.find(params[:id])
  	@user = @music.user
  	@new_music = Music.new
  	@music_comment = MusicComment.new
  	@music_comments = @music.music_comments
  end


  def edit
  	@music = Music.find(params[:id])
  	if @music.user_id != current_user.id
  		redirect_to musics_path
  end
  end

  def create
  	@music = Music.new(music_params)
  	@music.user_id = current_user.id
  	if @music.save
  		flash[:notice] = "successfully"
  		redirect_to music_path(@music.id)
  	else
  		@musics = Music.all
  		@user = current_user
  		flash[:error] = "error"
  		render :new
  	end
    end

    def update
    @music = Music.find(params[:id])
    @music.user_id = current_user.id
    if @music.update(music_params)
    	flash[:notice] = "successfully"
    	redirect_to music_path(@music.id)
    else
    	flash[:notice] = "error"
    	render :edit
    end
end

    def destroy
    	@music = Music.find(params[:id])
    	@music.destroy
    	redirect_to musics_path
    end

    private
    def music_params
    	params.require(:music).permit(:title, :body,:post_iamge_id, :genre_id, :category, :artist, :music_comment)
    end
end
