require 'sinatra'
require './todolist'

 
get '/home.html' do
  
page = File.read('./home.html')
    

end 
get '/todo.html' do
  t = Todolist.new("ms.txt")
 items = params['item']
 page =    File.read('./todo.html')
  t.add(items)
  t.list
  t.save
  t.complete(1)
  t.list
 page = page + items.to_s
 
end

 
get '/completed.html' do
  t1 = Todolist.new("ms.txt")
    t1.load1
  str =  t1.complete(1)
    
   page = File.read('./completed.html')
   page = page + str.to_s
   
 end

get '/pending.html' do
  t1 = Todolist.new("ms.txt")
    t1.load1
    t1.complete(2)
   str = t1.load1 
   page = File.read('./pending.html')
   page = page + str.to_s
   
 end
