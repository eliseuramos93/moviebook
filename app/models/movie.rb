class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :movie_genre
  enum release_status: { production: 0, released: 2 }
end
