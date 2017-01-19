require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    # $game = Game.new(player1, player2)
    @game = Game.make(player1, player2)
    redirect '/play'
  end

  get '/play' do
    # @game = $game
    @game = Game.instance
    erb(:play)
  end

  get '/attack' do
    @game = Game.instance
    @game.attack
    if @game.not_game_over?
      @game.turn
      erb(:attack)
    else
      redirect '/loser'
    end
  end

  get '/loser' do
    @game = Game.instance
    erb(:loser)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
