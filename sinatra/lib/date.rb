require 'sinatra'
require './dates'
require './numbers'
require './roman'
require './spell_digit'
get '/date' do
 day  = params['day']
 month = params['month']
 year = params['year']
 a = Date12.new
 b = Roman.new
 c = Numbers.new
 d = Spell_digit.new
page  = File.read('./date.html')
  f = a.date12(month,day,year)
  g = b.convert(year)
  h = c.convert(day)
  i = d.convert(year)
  page = page + month.to_s + " " + day.to_s + " " + year.to_s + " " + f + " " + h.to_s + " " + g + " " + i.to_s
 end
