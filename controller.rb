require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/game'

get '/' do
 erb(:home)
end


get '/rock' do
  @result = Game.play_computer('rock')
  erb(:result)
end

get '/paper' do
  @result = Game.play_computer('paper')
  erb(:result)
end

get '/scissors' do
  @result = Game.play_computer('scissors')
  erb(:result)
end

get '/:player1/:player2' do
  @result = Game.play(params[:player1], params[:player2])
  if @result == nil
    erb("<h1>Invalid guess</h1>")
  else
    erb(:result)
  end
end
