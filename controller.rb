require ('sinatra')
require ('json')
require ('sinatra/contrib/all') if development?
require ('pry-byebug')
require_relative './models/game'

get '/welcome' do
  erb (:welcome)
end

get '/:choice1/:choice2' do
  game = Game.new(params[:choice1],params[:choice2])
  @resultis = game.play
  erb(:result)
end
