require 'httparty'
require 'json'
require 'pp'
require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

   post '/results' do
    response = HTTParty.get('https://www.metaweather.com/api/location/2459115')
    nyc_weather = JSON.parse(response.body, {:symbolize_names => true})
    @weather0date = nyc_weather[:consolidated_weather][0][:applicable_date]
    @weather0low = nyc_weather[:consolidated_weather][0][:min_temp].to_i
    @weather0high = nyc_weather[:consolidated_weather][0][:max_temp].to_i
    @weather1date = nyc_weather[:consolidated_weather][1][:applicable_date]
    @weather1low  = nyc_weather[:consolidated_weather][1][:min_temp].to_i
    @weather1high = nyc_weather[:consolidated_weather][1][:max_temp].to_i
    @weather2date = nyc_weather[:consolidated_weather][2][:applicable_date]
    @weather2low = nyc_weather[:consolidated_weather][2][:min_temp].to_i
    @weather2high = nyc_weather[:consolidated_weather][2][:max_temp].to_i
    @weather3date = nyc_weather[:consolidated_weather][3][:applicable_date]
    @weather3low = nyc_weather[:consolidated_weather][3][:min_temp].to_i
    @weather3high = nyc_weather[:consolidated_weather][3][:max_temp].to_i
    @weather4date = nyc_weather[:consolidated_weather][4][:applicable_date]
    @weather4low = nyc_weather[:consolidated_weather][4][:min_temp].to_i
    @weather4high = nyc_weather[:consolidated_weather][4][:max_temp].to_i
    @weather5date = nyc_weather[:consolidated_weather][5][:applicable_date]
    @weather5low = nyc_weather[:consolidated_weather][5][:min_temp].to_i
    @weather5high = nyc_weather[:consolidated_weather][5][:max_temp].to_i
    erb :results
   end




end