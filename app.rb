require 'sinatra'
require "sinatra/reloader"
require './helpers/scraper.rb'

helpers Scraper

get '/' do
  data = nil
  erb :index, :locals => {data: data}
end

post '/' do
  local = params[:location]
  keyword = params[:keyword]
  #data = "You're looking for #{keyword} in #{local}"
  data = File.readlines("output.csv")
  #d = DiceScraper.new
  #data = d.scrape_only
  erb :index, :locals => {data: data}

end