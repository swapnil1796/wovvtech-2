class CreateTvSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_series do |t|
      t.string :name
      t.string :from_time
      t.string :to_time
      t.integer :channel_id

      t.timestamps
    end
  end
end
