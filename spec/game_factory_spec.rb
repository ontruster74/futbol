require './spec/spec_helper'

describe GameFactory do
  before(:each) do
    game_path = './data/simple_games.csv'

    @games = GameFactory.create_games(game_path)
  end

  describe '#self.create_games' do
    it 'returns an array of Game objects' do
      expect(@games).to be_a(Array)
      expect(@games[0]).to be_a(Game)
    end

    it 'returns an object containing Game objects created with external CSV data' do
      expect(@games[0].game_id).to eq("2012030221")
    end
  end
end