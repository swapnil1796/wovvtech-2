# Manages favoriting of TV shows
class FavTvShowsController < ApplicationController

  # Renders form to collect user email
  def new
    tv_show = TvSeries.find(params[:tv_series_id])
    @fav_show = tv_show.fav_tv_shows.new
  end

  # Saves user email and favorited tv show
  #
  # If incorrect data enters, displayes errors messages
  def create
    tv_show = TvSeries.find(fav_show_params[:tv_series_id])
    @fav_show = tv_show.fav_tv_shows.new(fav_show_params)
    if @fav_show.save
      redirect_to tv_show_path(tv_show)
    else
      @error_messages = @fav_show.errors.full_messages
      render :new
    end
  end

  # Whitelists user email and tv show identification from parameters
  def fav_show_params
    params.require(:fav_tv_show).permit(:email, :tv_series_id)
  end

end
