class AddStartTime < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_infos, :starts_at, :date
  end
end
