require 'csv'

class StatTracker

  def self.from_csv(filepaths_hash)
    CSV.foreach(filepaths_hash[:games], headers: true, header_converters: :symbol) do |row|
      home_team_id = row[:home_team_id]
      away_goals  = row[:away_goals].to_i
      home_goals = row[:home_goals].to_i
      venue = row[:venue]
      venue_link = row[:venue_link]

      @game = Game.new()
    end

    CSV.foreach(filepaths_hash[:teams], headers: true, header_converters: :symbol) do |row|
      team_id = row[:team_id]
      franchiseId = row[:franchiseId]
      teamName = row[:teamName]
      abbreviation = row[:abbreviation]
      stadium = row[:stadium]
      link = row[:link]

      @team = Team.new()
    end

    CSV.foreach(filepaths_hash[:game_teams], headers: true, header_converters: :symbol) do |row|
      game_id = row[:game_id]
      game_team_id = row[:team_id]
      hoa = row[:hoa]
      result = row[:result]
      head_coach = row[:head_coach]
      goals = row[:goals].to_i
      shots = row[:shots].to_i
      tackles = row[:tackles].to_i
      pim = row[:pim].to_i
      powerPlayOpportunities = row[:powerPlayOpportunities].to_i
      faceOffWinPercentage = row[:faceOffWinPercentage].to_i
      giveaways = row[:giveaways].to_i
      takeaways = row[:takeaways].to_i  

      @game_team = GameTeam.new()
    end 
  end

  # Game Statistics

  def highest_total_score
    
  end

  def lowest_total_score
    
  end

  def percentage_home_wins
    
  end

  def percentage_visitor_wins
    
  end

  def percentage_ties
    
  end

  def count_of_games_by_season
    
  end

  def average_goals_per_game
    
  end

  def average_goals_by_season
    
  end

   # League Statistics
   
  def count_of_teams
    
  end

  def best_offense
    
  end

  def worst_offense
    
  end

  def highest_scoring_visitor
    
  end

  def highest_scoring_home_team
    
  end

  def lowest_scoring_visitor
    
  end

  def lowest_scoring_home_team
    
  end

  # Season Stats
  
  def winningest_coach
    
  end

  def worst_coach
    
  end

  def most_accurate_team
    
  end

  def least_accurate_team
    
  end

  def most_tackles
    
  end

  def fewest_tackles
    
  end

end