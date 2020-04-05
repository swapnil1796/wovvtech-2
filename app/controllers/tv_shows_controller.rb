# Manages listing and searching of TV shows
class TvShowsController < ApplicationController

  # Renders a lists of TvSeries
  def index
    @tv_shows = params[:search].present? ? search_series : TvSeries.all
  end

  # Finds and renders TvSeries with the unique identification
  def show
    @tv_show = TvSeries.find(params[:id])
  end

  private

  # Searches tv series based on name
  # * If TvSeries is found, display details
  # * Otherwise, redirects to channels listing
  def search_series
    tv_show = TvSeries.where(name: params[:search][:name])
    return tv_show if tv_show.present?

    redirect_to channels_path(name: params[:search][:name])
  end

end
