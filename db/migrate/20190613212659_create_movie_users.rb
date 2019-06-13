class CreateMovieUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_users do |t|
      t.integer :user_id
      t.integer :movie_id
      t.boolean :favorite, default: false
      t.boolean :watchList, default: false

      t.timestamps
    end
  end
end
