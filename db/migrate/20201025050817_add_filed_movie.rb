class AddFiledMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_infos, :description, :text
    add_column :movie_infos, :released_on, :date
  end
end
