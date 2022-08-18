# frozen_string_literal: true

class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy]
  before_action :authenticate_user!
  # GET /blogs or /blogs.json
  def index
    @blogs = Blog.all
    @user = User.all
  end

  # GET /blogs/1 or /blogs/1.json
  def show; end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit; end

  def save_blogs
    # @saveblog = SavedBlog.find(params[:blog_id])
    @check_current_user = SavedBlog.find_by(blog_id: params[:blog_id], user_id: current_user.id)

    if @check_current_user
      redirect_to blogs_path, notice: 'blog already saved'

    else
      blog_id = params[:blog_id]
      user_id = current_user.id
      # if blog_id == @saveblog.id
      SavedBlog.create user_id: user_id, blog_id: blog_id

      redirect_to blogs_path, notice: 'blog saved to your list'
      # render plain: true
    end
  end

  # POST /blogs or /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blog_url(@blog), notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1 or /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to blog_url(@blog), notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1 or /blogs/1.json
  def destroy
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def savedblogs
    # @blogs = Blog.all
  end

  def removeSavedBlog
    @savedBlog = SavedBlog.where(id: params[:id])
    @savedBlog.destroy_all
    redirect_to savedblogs_path, notice: 'blog removed from wishlist'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def blog_params
    params.require(:blog).permit(:title, :content, :user_id, :blogImage)
  end
end
