class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  def index
    @posts=Post.all
  #  binding.pry
  end

def show
 @comment = Comment.new
# binding.pry
end


  def edit
  end


  def new
    @post=Post.new
end
  def create
  binding.pry
  @post = Post.new post_params
    @post.user = User.first

    if @post.save
      flash[:notice] = " The dude was saved! "
      redirect_to posts_path
    else
      flash.now[:notice] = "Invalid Dude"
      render 'new'
    end

  end

  def post_params
    params.require(:post).permit!
  end

  def update
    if  @post.update_attributes(post_params)
      flash.now[:notice] = " The dude was updated "
      render 'show'
    else render 'edit'
    end
  end

 def set_post
  @post = Post.find params[:id]
 end
end
