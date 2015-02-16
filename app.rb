require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
		date = Time.now
		year = date.year
		month = date.month
		@holidays = HolidApi.get(country: 'US', year: year, month: month).flatten
		@birthday = HolidApi.get(country: 'US', year: 1983, month: 9).flatten
		erb :index1
	end
end