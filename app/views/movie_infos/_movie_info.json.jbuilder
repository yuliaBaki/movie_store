json.extract! movie_info, :id, :title, :rating, :total_gross, :created_at, :updated_at
json.url movie_info_url(movie_info, format: :json)
