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
#   League Stats
  
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

  describe "#average_scores" do 
    it "returns home average scores" do 
      expect(@stat_tracker.home_average_score).to eq({"6"=>2.4, "3"=>1.5, "5"=>0.5, "16"=>1.75, "17"=>2.67, "8"=>2.5, "9"=>4.0})
    end

    it "returns visitor average scores" do
      expect(@stat_tracker.away_average_score).to eq({"3"=>1.67, "6"=>3.0, "5"=>0.5, "17"=>1.25, "16"=>1.0, "9"=>1.5, "8"=>1.5})

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

  describe "#team_name" do
    it "can find the team name based off of the team id" do
      expect(@stat_tracker.team_name("1")).to eq("Atlanta United")
    end
  end

  describe '#lowest_scorers' do
    it "returns the visiting team name with the lowest average score" do 
      expect(@stat_tracker.lowest_scoring_visitor).to eq("Sporting Kansas City")
    end
    
    it "returns the home team name with the lowest average score" do 
      expect(@stat_tracker.lowest_scoring_home_team).to eq("Sporting Kansas City")
    end
  end
end