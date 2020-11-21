class MovieInfosController < ApplicationController
  before_action :set_movie_info, only: [:show, :edit, :update, :destroy]

  # GET /movie_infos
  # GET /movie_infos.json
  def index
    @movie_infos = MovieInfo.all
  end

  # GET /movie_infos/1
  # GET /movie_infos/1.json
  def show
    @movie_infos = MovieInfo.find(params[:id])
  end

  # GET /movie_infos/new
  def new
    @movie_info = MovieInfo.new
  end

  # GET /movie_infos/1/edit
  def edit
  end

  # POST /movie_infos
  # POST /movie_infos.json
  def create
    @movie_info = MovieInfo.new(movie_info_params)

    respond_to do |format|
      if @movie_info.save
        format.html { redirect_to @movie_info, notice: 'Movie info was successfully created.' }
        format.json { render :show, status: :created, location: @movie_info }
      else
        format.html { render :new }
        format.json { render json: @movie_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_infos/1
  # PATCH/PUT /movie_infos/1.json
  def update
    respond_to do |format|
      if @movie_info.update(movie_info_params)
        format.html { redirect_to @movie_info, notice: 'Movie info was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_info }
      else
        format.html { render :edit }
        format.json { render json: @movie_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_infos/1
  # DELETE /movie_infos/1.json
  def destroy
    @movie_info.destroy
    respond_to do |format|
      format.html { redirect_to movie_infos_url, notice: 'Movie info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_info
      @movie_info = MovieInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_info_params
      params.require(:movie_info).permit(:title, :rating, :total_gross)
    end
end
