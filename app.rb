require 'sinatra'
require "erb"

# next step will be to modify the code to display the whole list of cakes found in the cake.list file

# Open cake.list file and ready each line
get '/' do
  file = File.open("cake.list")
  @cakes = file.readlines.map(&:chomp)
  erb :index
  # File.foreach("cake.list") { |cake| puts cake }
end

