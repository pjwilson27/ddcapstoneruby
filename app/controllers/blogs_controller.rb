class BlogsController < ApplicationController
  
  def index
    @blogs = Blog.all
  end
  
  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    
    if @blog.save
      flash[:notice] = "Blog has been successfully uploaded!"
      redirect_to @blog
    else
      flash[:error] = "There was a problem. Please try again later."
      redirect_to
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
  end

  def delete
  end
  
  private
  
  def blog_params
    params.require(:blog).permit(:title,:body)
  end
  
  
end
