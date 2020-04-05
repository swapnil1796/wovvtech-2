class Channel < ApplicationRecord
  validates :name, presence: true

  has_many :tv_series
end
