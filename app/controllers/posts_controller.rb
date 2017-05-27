class PostsController < ApplicationController
  def home
  
  end
  
  def index
    @posts=Post.all
  end
  
  def new
    
  end
  
  def create
    @post=Post.new
    @post.name=params[:name]
    @post.address=params[:address]
    @post.save
     
     redirect_to "/index"
  end
  
  def destroy
    @destroypost=Post.find(params[:post_id])
    @destroypost.destroy
      
      redirect_to '/'
  end
  
  def edit
      @editpost=Post.find(params[:post_id])
  end
    
  def update
      @updatepost=Post.find(params[:post_id])
      @updatepost.name=params[:name]
      @updatepost.address=params[:address]
      @updatepost.save
        
      redirect_to '/'
  end
end
