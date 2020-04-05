class TvSeries < ApplicationRecord
  belongs_to :channel

  has_many :fav_tv_shows
end
