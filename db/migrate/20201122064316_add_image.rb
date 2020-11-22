class AddImage < ActiveRecord::Migration[6.0]
  def change
    add_column :movie_infos, :director, :string
    add_column :movie_infos, :duration, :string
    add_column :movie_infos, :image_file_name, :string, default: "placeholder.png"
  end
end
