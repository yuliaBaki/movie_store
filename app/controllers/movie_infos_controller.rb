class MovieInfosController < ApplicationController
  def index
    @movie_infos = MovieInfo.released
  end

  def show
    @movie_infos = MovieInfo.find(params[:id])
  end

  def edit
    @movie_infos = MovieInfo.find(params[:id])
  end

  def update
    #fail
    @movie_infos = MovieInfo.find(params[:id]) #get the id of the movie
    @movie_infos.update(event_params) 
    redirect_to movie_info_path
  end

  def new
    @movie_infos = MovieInfo.new
  end

  def create
    @movie_infos = MovieInfo.new(event_params)
    if @movie_infos.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @movie_infos = MovieInfo.find(params[:id])
    @movie_infos.destroy
    redirect_to root_path
  end
  
  private

  def event_params
    movie_param = params.require(:movie_info).permit(:title, :location, :total_gross, :released_on, :description, :rating, :director, :duration, :image_file_name)
  end

end
