class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :favorite_genre, class_name: 'MovieGenre'
end
