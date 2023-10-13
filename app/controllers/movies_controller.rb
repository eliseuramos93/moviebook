class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      flash[:notice] = 'Falha ao salvar novo filme.'
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      flash[:notice] = 'Falha ao alterar filme.'
      render :edit
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params
      .require(:movie)
      .permit(:title, :release_year, :plot, :country, :duration, :director_id, :movie_genre_id)
  end
end
