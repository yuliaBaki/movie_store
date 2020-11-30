class Addcapacity < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_infos, :capacity, :text
  end
end
