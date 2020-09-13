class MusicCommentsController < ApplicationController
	def create
		@music = Music.find(params[:music_id])
		comment = current_user.music_comments.new(music_comment_params)
		comment.music_id = @music.id
		comment.save
		redirect_to music_path(@music)
end

   def destroy
    	@music = Music.find(params[:music_id])
    	comment = MusicComment.find(params[:id])
    	comment.destroy
    	redirect_to music_path(@music)
end

private

   def music_comment_params
   	params.require(:music_comment).permit(:user_id,:comment)
 end

 def correct_user
 	comment = current_user.music_comments.find_by(id: params[:id])
end
end
