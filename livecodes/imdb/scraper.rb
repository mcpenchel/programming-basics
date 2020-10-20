require 'nokogiri'
require 'open-uri'

IMDB_URL = 'https://www.imdb.com/'

# We could make this method execute the other one for each
# of the hashes inside it's array; it would be another very
# valid option :ok

def scrape_top_5_movies_from_imdb
  html_file = open("#{IMDB_URL}chart/top").read
  html_doc = Nokogiri::HTML(html_file)

  movies_array = []

  html_doc.search(".titleColumn")[0..4].each do |element|
    href = element.search('a').attribute('href').value
    title = element.search('a').text.strip

    movies_array << { title: title, href: href }
  end

  movies_array
end

def scrape_movie_info(href, title)
  movie_hash = {}

  html_file = open("#{IMDB_URL}#{href}").read
  html_doc = Nokogiri::HTML(html_file)

  cast_div = html_doc.search('.credit_summary_item')[2]
  cast_array = []

  cast_div.search('a')[0..2].each do |crew|
    cast_array << crew.text.strip
  end

  # One method for getting the cast
  movie_hash[:cast] = cast_array

  # One method for getting the director
  director_div = html_doc.search('.credit_summary_item')[0]
  movie_hash[:director] = director_div.search('a')[0].text.strip
  movie_hash[:summary] = html_doc.search('.summary_text')[0].text.strip
  movie_hash[:year] = html_doc.search('#titleYear')[0].search('a')[0].text.strip

  movie_hash
end
