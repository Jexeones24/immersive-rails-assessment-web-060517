class GuestEpisodesController < ApplicationController

  def index
    @guest_episodes = GuestEpisode.all
  end

  def new
    @guest_episode = GuestEpisode.new
  end

  def create
    @guest_episode = GuestEpisode.create(guest_episodes[:id])
    redirect_to guest_episodes_path
  end

  def show
    @guest_episode = GuestEpisode.find(guest_episode[:id])
  end

  def edit
    @guest_episode = GuestEpisode.find(guest_episode[:id])
    redirect_to guest_episode_path(@guest_episode)
  end

  def update
    @guest_episode = GuestEpisode.find(guest_episode[:id])
    @guest_episode.update
  end

  def delete
    @guest_episode = GuestEpisode.find(guest_episode[:id])
    @guest_episode.destroy
  end

end
