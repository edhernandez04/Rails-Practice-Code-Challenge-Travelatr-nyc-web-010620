class DestinationsController < ApplicationController
  def index
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
