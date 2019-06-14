class MoviesController < ApplicationController
  def index
    if params.include?("search")
      movies = Movie.where("lower(title) LIKE ?", "%#{params[:search].downcase}%")
      render json:movies
    else
      movies = Movie.limit(30)
      render json: movies
    end
  end

  def top5
    movies = Movie.where(rating:10).sample(5)
    render json: movies
  end

end
