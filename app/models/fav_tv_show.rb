class FavTvShow < ApplicationRecord
  belongs_to :tv_series

  validates :email, presence: true, format: { with: /\w+@\w+.\w+/ }
end
