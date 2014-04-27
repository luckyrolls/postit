class CommentsController < ApplicationController

  def create
    binding.pry
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params.require(:comment).permit(:body))
    @comment.post = @post

    if @comment.save

      flash[:notice] = "Dude Saved"
      redirect_to post_path(@post)
    else
      flash.now[:notice] = "Invalid dude"
      render 'posts/show'
     end
  end
end
