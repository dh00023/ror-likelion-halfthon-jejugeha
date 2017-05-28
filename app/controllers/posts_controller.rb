class PostsController < ApplicationController
    before_action :find_posts, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index]
    # searchkick gem
    def search
      if params[:search].present?
        @posts = Post.search(params[:search])
      else
        @posts = Post.all
      end
    end

    def index
        @posts=Post.all
    end
  
    def new
        @post = Post.new  
    end
  
    def create
        @post=Post.new(posts_params) # 코드 반복이 많아 private으로 메소드를 만들었어요
        
        if @post.save
            redirect_to @post #원래 index였는데 post를 보여주는게 나을것 같아 수정했어요@
        else
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end

    def update
        if @post.update(posts_params)
            redirect_to @post
        else
            render 'edit'
        end
    end
    
    def destroy
        @post.destroy
        redirect_to posts_path
    end
    
    private
    
    def posts_params
        params.require(:post).permit(:name, :address, :image, :content, :category)
    end
    
    def find_posts
        @post = Post.find(params[:id])
    end
end