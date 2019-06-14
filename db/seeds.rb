require 'byebug'
require 'JSON'

# read the data from data.json file
json_data = File.read("./db/data.json")
# puts json_data
# currently a string since we are reading the file
parsedMovies = JSON.parse(json_data)

# parsedMovies gives u the array of movie objects so that u can seed db by creating Movie objects

# SEED THE DB AND CREATE YO MOVIES!
parsedMovies.each do |movie|
  # byebug
  Movie.create(title: movie["title"], poster: movie["poster_path"], rating: movie["vote_average"], database_id: movie["id"])
end



# url = 'https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=43edb8c963a9a3682bef3ab2e2715caa'
# response = RestClient.get(url)
# data = JSON.parse(response)
# allMovies = data['results']
# allMovies.each do|movie|
#   Movie.create(title: movie['title'], poster:movie['poster_path'], rating:movie['vote_average'])
# end
