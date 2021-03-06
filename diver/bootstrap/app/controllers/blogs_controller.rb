class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy]
  def index
    @blog = Blog.all
  end

  def new
    @blog = if params[:back]
              Blog.new(blog_params)
            else
              Blog.new
            end
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice: 'ブログを作成しました。'
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: 'ブログを編集しました'
    else
      render 'edit'
    end
  end

  def destroy
    @blog.destroy
    render :new if @blog.invalid?
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def set_blog
    @blog = Blog.find params[:id]
  end
end
