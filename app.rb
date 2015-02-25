require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
		# @holidays = HolidApi.get(country: 'US', year: year, month: month).flatten
		params['month'] ||= '1'
		params['year'] ||= '1999'
		params['country'] ||= 'US'
		@holidays = HolidApi.get(country: params['country'], year: params['year'], month: params['month']).flatten
		erb :index1
	end
end