require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

enable :sessions

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/display-names'
  end

  get '/display-names' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:names)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @game = Game.new
    @game.attack(@player2)
    erb(:attack)
  end

  run! if app_file == $0

end
