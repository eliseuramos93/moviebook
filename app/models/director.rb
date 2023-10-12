class Director < ApplicationRecord
  has_many :movies
  belongs_to :favorite_genre, class_name: 'MovieGenre'
end
