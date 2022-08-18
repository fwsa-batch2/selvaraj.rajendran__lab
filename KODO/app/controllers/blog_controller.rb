class BlogController < ApplicationController
  def index
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
      redirect_to 'blogs/index'
    else
      redirect_to 'blogs/new'
    end

  end

  def edit
  end

  private
  def blog_params 
    params.require(:blog).permit(:title ,:content,:iframe, :image)
  end

end
