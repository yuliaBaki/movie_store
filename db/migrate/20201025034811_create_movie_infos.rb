class CreateMovieInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_infos do |t|
      t.string :title
      t.string :rating
      t.decimal :total_gross

      t.timestamps
    end
  end
end
