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

  describe 'initialize' do
    it 'exists' do
      expect(@stat_tracker).to be_a(StatTracker)
    end

    it 'has a collection of games' do
      expect(@stat_tracker.games).to be_a(Array)
      expect(@stat_tracker.games[0]).to be_a(Game)
    end

    it 'has a collection of teams' do
      expect(@stat_tracker.teams).to be_a(Array)
      expect(@stat_tracker.teams[0]).to be_a(Team)
    end

    it 'has a collection of game teams' do
      expect(@stat_tracker.game_teams).to be_a(Array)
      expect(@stat_tracker.game_teams[0]).to be_a(GameTeam)
    end
  end

  describe '#self.from_csv' do
    it 'returns an object of type StatTracker' do
      expect(@stat_tracker).to be_a(StatTracker)
    end

    it 'returns an object that holds Game objects created from external CSV data' do
      expect(@stat_tracker.games[0].venue).to eq("Toyota Stadium")
    end

    it 'returns an object that holds Team objects created from external CSV data' do
      expect(@stat_tracker.teams[0].teamName).to eq("Atlanta United")
    end

    it 'returns an object that holds GameTeam objects created from external CSV data' do
      expect(@stat_tracker.game_teams[0].head_coach).to eq("John Tortorella")
    end
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
  
  describe '#percentage_of_home_wins' do
    it 'can return the percentage of home wins' do
      expect(@stat_tracker.percentage_home_wins).to eq(30.00)
    end
  end

  describe '#percentage_of_visitor_wins' do 
    it 'can return the percentage of visitor wins' do
      expect(@stat_tracker.percentage_visitor_wins).to eq(20.00)
    end
  end

  describe '#percentage_ties' do
    it 'can return the percentage of ties' do
      expect(@stat_tracker.percentage_ties).to eq(0.00)
    end
  end
  
  describe "#count_games_by_season" do
    it "can return count of games by season in a hash" do
      expect(@stat_tracker.count_of_games_by_season).to eq({"20122013" => 20})
    end
  end

  describe "#average_goals_per_game" do
    it "can find the average goals per game as a float" do
      expect(@stat_tracker.average_goals_per_game).to eq(3.8)
    end 
  end

  describe "#average_goals_per_season" do
    it "can find the average goals per season" do
      expect(@stat_tracker.average_goals_per_season).to eq({"20122013"=>0.25})
    end
  end 

  #  League Stats
  
  describe '#count_of_teams' do
    it 'can return the count of teams' do
      expect(@stat_tracker.count_of_teams).to eq(20)
    end
  end

  describe '#best_offense' do
    it 'can find the team with the best offense' do
      expect(@stat_tracker.best_offense).to eq('FC Dallas')
    end
  end

  describe '#worst_offense' do
    it 'can find the team with the worst offense' do
      expect(@stat_tracker.worst_offense).to eq('Sporting Kansas City')
    end
  end

  describe "#highest_scoring_visitor" do
    it "can find the name of the highest average scoring visitor" do
      expect(@stat_tracker.highest_scoring_visitor).to eq("FC Cincinnati")
    end
  end

  describe "#highest_scoring_home_team" do
    it "can find the name of the highest average home team" do
      expect(@stat_tracker.highest_scoring_home_team).to eq("New York City FC")
    end
  end

  describe "#lowest_scoring_visitor" do
    it "can find the name of the highest average scoring visitor" do
      
    end
  end

  describe "#lowest_scoring_home_team" do
    it "can find the name of the highest average home team" do
      
    end
  end

  describe "#team_name" do
    it "can find the team name based off of the team id" do
      expect(@stat_tracker.team_name("1")).to eq("Atlanta United")
    end
  end

  # Season Stats

  describe '#most_tackles' do 
    it 'can find the team with the most tackles for a given season' do

      game_path = './data/simple_games.csv'
      team_path = './data/simple_teams.csv'
      double_game_teams_path = './data/double_simple_game_teams.csv'

      double_locations = {
        games: game_path,
        teams: team_path,
        game_teams: double_game_teams_path
      }

      double_stat_tracker = StatTracker.from_csv(double_locations)

      expect(double_stat_tracker.most_tackles('20122013')).to eq('LA Galaxy')
    end
  end

  describe '#fewest_tackles' do 
    it 'can find the team with the fewest tackles for a given season' do

      game_path = './data/simple_games.csv'
      team_path = './data/simple_teams.csv'
      double_game_teams_path = './data/double_simple_game_teams.csv'

      double_locations = {
        games: game_path,
        teams: team_path,
        game_teams: double_game_teams_path
      }

      double_stat_tracker = StatTracker.from_csv(double_locations)

      expect(double_stat_tracker.fewest_tackles('20122013')).to eq('Sporting Kansas City')
    end
  end
end