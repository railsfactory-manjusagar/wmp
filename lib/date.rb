require 'sinatra'



get '/date' do
 day  = params['day']
 month = params['month']
 year = params['year']
 
page  = File.read('./date.html')
 
 end
