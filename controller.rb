require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/game'

get '/' do
 erb(:home)
end

get '/:player1/:player2' do
  @result =  Game.play(params[:player1], params[:player2])
  erb(:result)
end
