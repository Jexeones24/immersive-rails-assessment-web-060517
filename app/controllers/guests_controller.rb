class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(params[:id])
    redirect_to guests_path
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
    redirect_to guest_path(@guest)
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update
  end

  def delete
    @guest = Guest.find(params[:id])
    @guest.destroy
  end

end
