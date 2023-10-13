class MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
  end

  def new
    @movie_genre = MovieGenre.new
  end

  def create
    @movie_genre = MovieGenre.new(movie_genre_params)
    if @movie_genre.save
      redirect_to @movie_genre
    else
      flash[:notice] = 'Falha ao salvar novo gênero.'
      render :new
    end
  end

  def edit
    @movie_genre = MovieGenre.find(params[:id])
  end

  def update
    @movie_genre = MovieGenre.find(params[:id])

    if @movie_genre.update(movie_genre_params)
      redirect_to @movie_genre
    else
      flash[:notice] = 'Falha ao alterar gênero.'
      render :edit
    end
  end

  def show
    @movie_genre = MovieGenre.find(params[:id])
  end

  private

  def movie_genre_params
    params
      .require(:movie_genre)
      .permit(:description)
  end
end
