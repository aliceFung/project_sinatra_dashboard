require 'sinatra'
require "sinatra/reloader"
require './helpers/scraper.rb'

helpers Scraper

get '/' do
  #data, d = nil
  erb :index
end

post '/' do
  local = params[:location]
  keyword = params[:keyword]
  scraper = Scraper::DiceScraper.new
  @data = scraper.scrape_only(local, keyword)
  erb :index

end