class PostsController < ApplicationController
  def index
  end

  def like_it
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.save
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:message] = "You Created a Post!"
      redirect_to post_path(@post)
    else
      flash.now[:messages] = @post.errors.full_messages
      render :new
    end
  end

  def destroy
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
  end
end
