class Movie < ActiveRecord::Base
  def self.all_ratings
    result = {}
    self.select(:rating).uniq.each { |movie| result[movie.rating] = 1 }
    return result
  end

  def self.find_all_by_rating(ratings_list)
    ratings_list.length > 0 ? self.where(rating: ratings_list) : self.all
  end
end
