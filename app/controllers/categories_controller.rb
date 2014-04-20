class CategoriesController < ApplicationController

def new
  @category = Category.new
end

def show

end

def delete

end
  def create
      @category = Category.new post_params
        if @category.save
        flash.now[:notice] = " The dude was saved! "
        redirect_to posts_path
      else
        flash.now[:notice] = "Invalid Dude"
        render 'new'
      end

    end
  end

