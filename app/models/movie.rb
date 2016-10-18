class Movie < ActiveRecord::Base
  def self.ratings
    arr = Array.new
    self.select("rating").each { |i| arr.push(i.rating)}
    arr.sort.uniq
  end
end
