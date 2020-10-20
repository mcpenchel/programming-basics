require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
epi_url = 'http://www.epicurious.com'
imdb_url = 'https://www.imdb.com/chart/top/?ref_=nv_mv_250'
bbc_url = 'https://www.bbc.com/news'

html_file = open(bbc_url).read

html_doc = Nokogiri::HTML(html_file)

puts html_doc.search('.gs-c-promo-heading')

html_doc.search('.gs-c-promo-heading').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
  puts "-------------------------"
end
