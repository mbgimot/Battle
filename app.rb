require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    # @game = Game.make(player1, player2)
    @game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    if @game.not_game_over?
      @game.turn
      erb(:attack)
    else
      redirect '/loser'
    end
  end

  get '/loser' do
    erb(:loser)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
