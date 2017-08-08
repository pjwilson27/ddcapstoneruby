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
    
    respond_to do |f|
      if @blog.save
        f.html { redirect_to @blog, notice: "Blog created!" }
      else
        f.html { render action: 'new' }
      end
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
  end

  def delete
    @blog = Blog.find(params[:id])
  end
  
  private
  
  def blog_params
    params.require(:blog).permit(:title,:body)
  end
  
  
end
