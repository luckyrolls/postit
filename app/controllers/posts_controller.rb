class PostsController < ApplicationController
  def index
    @posts=Post.all
  #  binding.pry
  end

def show
  @post = Post.find(params[:id])
 # binding.pry
# render :show
end

def new
    @post=Post.new
end
  def create
    binding.pry
    @post = Post.new post_params

    if @post.save
      flash[:notice] = " The dude was saved! "
      redirect_to posts_path
    else
      render 'new'
    end

  end

  def post_params
    params.require(:post).permit!
  end

  def edit
  end

  def update

  end

  end