require_relative 'scraper'
require 'yaml'

info_array = scrape_top_5_movies_from_imdb

movies_array = []

info_array.each do |hash|
  movies_array << scrape_movie_info(hash[:href], hash[:title])
end

File.open('movies.yml', 'w') do |f|
  f.write(movies_array.to_yaml)
end
