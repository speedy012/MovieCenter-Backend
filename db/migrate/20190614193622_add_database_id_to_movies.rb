class AddDatabaseIdToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :database_id, :integer 
  end
end
