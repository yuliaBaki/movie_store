class MovieInfosController < ApplicationController
  def index
    @movie_infos = MovieInfo.all
  end

  def show
    @movie_infos = MovieInfo.find(params[:id])
  end

  def edit
    @movie_infos = MovieInfo.find(params[:id])
  end
end
