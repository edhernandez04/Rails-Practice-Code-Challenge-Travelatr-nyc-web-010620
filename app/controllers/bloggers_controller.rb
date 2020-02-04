class BloggersController < ApplicationController
  def index
    @bloggers = Blogger.all
  end

  def show
    @blogger = Blogger.find(params[:id])
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.new
    if @blogger.save
      redirect_to bloggers_path(@blogger)
    else
      flash.now[:messages] = @blogger.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
