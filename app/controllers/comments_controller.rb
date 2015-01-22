class CommentsController < ApplicationController
	def create
		@post = Post.find( params[:post_id])

		if @post.comments.create( comment_params )
			redirect_to @post, notice: 'Comment was successfully created'
		else
			redirect_to @post, alert: 'Error creating Comment'
		end
	end
end
