require './spec/spec_helper'

describe StatTracker do
  before :all do
    game_path = './data/simple_games.csv'
    team_path = './data/simple_teams.csv'
    game_teams_path = './data/simple_game_teams.csv'

    locations = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }

    @stat_tracker = StatTracker.from_csv(locations)
  end

  describe '#from_csv' do
    
  end

  describe '#games' do
    
  end

  describe '#teams' do
    
  end

  describe '#games_teams' do
    
  end

  # Game Statistics

  describe '#highest_total_score' do
    it 'can return the highest total score' do
      expect(@stat_tracker.highest_total_score).to eq(6)
    end
  end

  describe '#lowest_total_score' do
    it 'can return the lowest total score' do
      expect(@stat_tracker.lowest_total_score).to eq(1)
    end
  end

  describe "#count_games_by_season" do
    it "can return count of games by season in a hash" do
      expect(@stat_tracker.count_of_games_by_season).to eq({"20122013" => 20})
    end
  end

end