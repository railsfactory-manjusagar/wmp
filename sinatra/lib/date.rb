require 'sinatra'
require './dates'
require './numbers'
require './roman'
require './spell_digit'
require './kannada'
get '/date' do
 day  = params['day'].to_i
 month = params['month'].to_i
 year = params['year'].to_i
 
 b = Roman.new
 c = Numbers.new
 d = Spell_digit.new
 z = Kannada.new
page  = File.read('./date.html')
   if day != 0 && month !=0 && year !=0 
     f = Time.new(year , month , day)
      a = f.strftime('%A')
   end
  g = b.convert2(year)
  h = c.convert1(day)
  i = d.convert(year)
  l = z.convert(a)
  page = page + month.to_s + " " + day.to_s + " " + year.to_s + " " + a.to_s + " " + l.to_s + " " + h.to_s + " " + g.to_s + " " + i.to_s 
 end
