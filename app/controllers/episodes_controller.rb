class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(episode_params)
    redirect_to episodes_path
  end

  def show
    @episode = Episode.find(episode_params)
  end

  def edit
    @episode = Episode.find(episode_params)
    redirect_to episode_path(@episode)
  end

  def update
    @episode = Episode.find(episode_params)
    @episode.update
  end

  def delete
    @episode = Episode.find(episode_params)
    @episode.destroy
  end

  private

  def episode_params
    params.permit(:episode).require(:date, :number)
  end
end
