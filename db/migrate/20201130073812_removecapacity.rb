class Removecapacity < ActiveRecord::Migration[6.0]
  def change
    remove_column :movie_infos, :capacity, :decimal
  end
end
