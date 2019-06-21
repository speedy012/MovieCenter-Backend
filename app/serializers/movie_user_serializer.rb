class MovieUserSerializer < ActiveModel::Serializer
  attributes :id, :favorite, :watchList
  has_one :movie
end
