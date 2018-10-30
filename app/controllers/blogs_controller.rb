class BlogsController < ApplicationController
  before_action :set_blog, only:[:edit, :update, :destroy]
  
  def index
    @blog = Blog.all
  end
  
  def new
    if params[:back]
      @blog = Blog.new(blogs_params)
    else
      @blog = Blog.new
    end
  end
  
  def create
    @blog = Blog.new(blogs_params)
    if @blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    @blog = Blog.update(blogs_params)
    if @blog.save
      redirect_to blogs_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @blog.destroy
    redirect_to blogs_path
  end
  
  def confirm
    @blog = Blog.new(blogs_params)
    render :new if @blog.invalid?
  end
  private
    def blogs_params
      params.require(:blog).permit(:content)
    end
    
    def set_blog
      @blog = Blog.find(params[:id])
    end
end