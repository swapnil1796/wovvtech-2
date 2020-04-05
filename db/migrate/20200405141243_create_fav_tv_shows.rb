class CreateFavTvShows < ActiveRecord::Migration[5.0]
  def change
    create_table :fav_tv_shows do |t|
      t.string :email
      t.integer :tv_series_id

      t.timestamps
    end
  end
end
