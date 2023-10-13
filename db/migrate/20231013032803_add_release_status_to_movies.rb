class AddReleaseStatusToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :release_status, :integer, default: 0
  end
end
