require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  get '/attack' do
    $game.whallop $player_2
    @player_1 = $player_1
    @player_2 = $player_2
    erb :attack
  end

  get '/some/path' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
