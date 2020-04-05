# Manages listing and searching of channels
class ChannelsController < ApplicationController

  # Renders a lists of channels
  def index
    @channels = search_channel
    @tv_shows = @channels.map(&:tv_series).flatten
  end

  private

  # Searches channels based on name
  # * If channel is found, display details
  # * Otherwise, displays all channels along with the tv shows of each channel
  def search_channel
    channel = Channel.where(name: params[:name])
    channel.empty? ? Channel.all : channel
  end

end
