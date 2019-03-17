require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

enable :sessions

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect '/display-names'
  end

  get '/display-names' do
    @game = $game
    erb(:names)

  end

  get '/attack' do
    @game = $game

    erb(:attack)
  end

  run! if app_file == $0

end
