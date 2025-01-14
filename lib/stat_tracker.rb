class StatTracker
  @@games = []
  @@teams = []
  @@game_teams = []

  def self.games 
    return @@games
  end

  def self.teams
    return @@teams
  end

  def self.game_teams
    return @@game_teams
  end

  def self.from_csv(filepaths_hash)
    CSV.foreach(filepaths_hash[:games], headers: true, header_converters: :symbol) do |row|
      @@games << Game.new(row[:home_team_id], row[:away_goals].to_i, row[:home_goals].to_i, row[:venue], row[:venue_link])
    end

    CSV.foreach(filepaths_hash[:teams], headers: true, header_converters: :symbol) do |row|
      @@teams << Team.new(row[:team_id], row[:franchiseId], row[:teamName], row[:abbreviation], row[:stadium], row[:link])
    end

    CSV.foreach(filepaths_hash[:game_teams], headers: true, header_converters: :symbol) do |row|
      @@game_teams << GameTeam.new(row[:game_id], row[:team_id], row[:hoa], row[:result], row[:head_coach], row[:goals].to_i, row[:shots].to_i, row[:tackles].to_i, row[:pim].to_i, row[:powerPlayOpportunities].to_i, row[:faceOffWinPercentage].to_i, row[:giveaways].to_i, row[:takeaways].to_i) 
    end 

    return [@@games[1], @@teams[1], @@game_teams[1]]
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