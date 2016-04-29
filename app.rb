require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before { @game = Game.instance }

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.whallop(@game.defender)
    @game.game_over? ? erb(:loser) : erb(:attack)
  end

  get '/loser' do
    erb :loser
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
