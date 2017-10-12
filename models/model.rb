require 'httparty'
require 'json'
require 'pp'

# In these two lines we get the data from the weather api
response = HTTParty.get('https://www.metaweather.com/api/location/2459115')
nyc_weather = JSON.parse(response.body, {:symbolize_names => true})

#gets the entire weather hash
#pp nyc_weather

#day1 min temp, max temp
nyc_weather[:consolidated_weather][0][:applicable_date]
nyc_weather[:consolidated_weather][0][:min_temp]
nyc_weather[:consolidated_weather][0][:max_temp]

#day2 min temp, max temp
nyc_weather[:consolidated_weather][1][:applicable_date]
nyc_weather[:consolidated_weather][1][:min_temp]
nyc_weather[:consolidated_weather][1][:max_temp]

#day3 min temp, max temp
nyc_weather[:consolidated_weather][2][:applicable_date]
nyc_weather[:consolidated_weather][2][:min_temp]
nyc_weather[:consolidated_weather][2][:max_temp]

#day4 min temp, max temp
nyc_weather[:consolidated_weather][3][:applicable_date]
nyc_weather[:consolidated_weather][3][:min_temp]
nyc_weather[:consolidated_weather][3][:max_temp]

#day5 min temp, max temp
nyc_weather[:consolidated_weather][4][:applicable_date]
nyc_weather[:consolidated_weather][4][:min_temp]
nyc_weather[:consolidated_weather][4][:max_temp]

#day6 min temp, max temp
nyc_weather[:consolidated_weather][5][:applicable_date]
nyc_weather[:consolidated_weather][5][:min_temp]
nyc_weather[:consolidated_weather][5][:max_temp]





