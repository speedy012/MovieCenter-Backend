# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = 'https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=43edb8c963a9a3682bef3ab2e2715caa'
response = RestClient.get(url)
data = JSON.parse(response)
allMovies = data['results']
allMovies.each do|movie|
  Movie.create(title: movie['title'], poster:movie['poster_path'], rating:movie['vote_average'])
end
