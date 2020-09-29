require('sinatra')
require('sinatra/reloader')
require('./lib/riddle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @riddles = Riddle.all 
  erb(:riddles)
end

get('/riddles') do
  Riddle.clear
  riddle = Riddle.new('hello fellow why so mellow', 1, nil)
  riddle.save
  riddle2 = Riddle.new('the quick brown fox jumped over the lazy dog', 2, nil)
  riddle2.save
  riddle3 = Riddle.new('this is a riddle', 2, nil)
  riddle3.save
  @riddles = Riddle.all
  erb(:riddles)
end

get('/riddles/:id') do
  @riddle = Riddle.find(params[:id].to_i())
  erb(:riddle)
end



