require 'csv'

# ** require_relative is for requiring other ruby
# files!
# ** require by itself is for requiring a ruby library,
# not a file.

filepath    = 'data/beers.csv'

################# Reading from the CSV!

csv_file_options = {
  col_sep: ',',
  quote_char: '"',
  headers: :first_row
}

# headers: :first_row allows us to read from the
# CSV row as a Hash, which is easier than an array

beers = []

CSV.foreach(filepath, csv_file_options) do |row|
  beers << row
end

################# Saving to the CSV!

csv_file_options = {
  col_sep: ',',
  quote_char: '"',
  force_quotes: true
}

# Remember: wb for "writing from beginning"
#           a  for "appending"

CSV.open(filepath, 'wb', csv_file_options) do |csv|
  csv << ["Name", "Appearance", "Origin"]
  csv << ["Edelweiss", "White", "Austria"]
  csv << ["Brahma", "Shitbeer", "Brazil"]
  csv << ["Heineken", "Lager", "Netherlands"]
  csv << ["Golden Drakht", "No clue", "Belgium"]
end

# Useful links:
# https://ruby-doc.org/core-2.0.0/IO.html#method-c-new-label-IO+Open+Mode
# https://ruby-doc.org/stdlib-2.6.1/libdoc/csv/rdoc/CSV.html#method-c-new
