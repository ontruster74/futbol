require 'csv'

class StatTracker
  
  def self.from_csv(filepaths_hash)
    @games = filepaths_hash[:games]
    @teams = filepaths_hash[:teams]
    @game_teams = filepaths_hash[:game_teams]
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