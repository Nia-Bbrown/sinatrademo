require 'sinatra'
require 'json'
# define a route that uses the helper for json
# get '/cakes.json' do
#   json :foo => 'bar'
# end

get '/cakes.json' do
  content_type :json
  cakes = File.readlines("cake.list").map(&:chomp)
  cakes.to_json
end

get '/' do
  erb :index
end

# next step will be to modify the code to display the whole list of cakes found in the cake.list file

# --------RUBY--------
# Open cake.list file and ready each line --RUBY--
# get '/' do
#   file = File.open("cake.list")
#   @cakes = file.readlines.map(&:chomp)
#   erb :index
#   # File.foreach("cake.list") { |cake| puts cake }
# end

