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

  private

  def movie_params
    params
      .require(:movie_genre)
      .permit(:description)
  end
end
