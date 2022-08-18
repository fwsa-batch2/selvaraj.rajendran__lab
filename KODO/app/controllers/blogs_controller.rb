class BlogsController < ApplicationController
  def create
    @blog = Blog.create(blog_params)

    if @blog.save
      redirect_to @blog
    else
     :show
    end
  end

  def index
    @blogs = Blog.all
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render :edit
    end
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def destroy 
    @blog = Blog.find(params[:id])
    @blog.destroy
 
    redirect_to :action => :index

  end


  private

  def blog_params
    params.require(:blog).permit(:title, :content, :iframe, :category_id)
  end
end
