class CategoriesController < ApplicationController

  def new
   @category = Category.new
  end

  def show

  end

  def delete

  end
  def create
  #  binding.pry
    @category = Category.new  category_params
    if @category.save
      flash[:notice] = " The dude was saved! Add another?"
      redirect_to new_category_path
    else
      flash.now[:notice] = "Invalid Dude"
      render 'new'
    end

  end
end

def category_params
  params.require(:category).permit!
end