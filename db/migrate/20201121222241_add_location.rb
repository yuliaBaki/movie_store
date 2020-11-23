class AddLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_infos, :location, :text
  end
end
