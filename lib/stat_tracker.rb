class StatTracker
  attr_reader :games, :teams, :game_teams

  def initialize(games, teams, game_teams)
    @games = games
    @teams = teams
    @game_teams = game_teams
  end

  def self.from_csv(filepaths_hash)
    games = GameFactory.create_games(filepaths_hash[:games])
    teams = TeamFactory.create_teams(filepaths_hash[:teams])
    game_teams = GameTeamFactory.create_game_teams(filepaths_hash[:game_teams])

    return StatTracker.new(games, teams, game_teams)
  end

  # Game Statistics

  def highest_total_score
    highest_game = @games.max_by {|game| game.away_goals + game.home_goals}
    return (highest_game.away_goals + highest_game.home_goals)
  end

  def lowest_total_score
    lowest_game = @games.min_by {|game| game.away_goals + game.home_goals}
    return (lowest_game.away_goals + lowest_game.home_goals)
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
    @teams.count
  end

  def best_offense
    teams_hash = {}
    @games.each do |game|
      home_id = game.home_team_id.to_sym
      away_id = game.away_team_id.to_sym
      if !(teams_hash.has_key?(home_id))
        teams_hash[home_id] = 0
      end

      if !(teams_hash.has_key?(away_id))
        teams_hash[away_id] = 0
      end

      teams_hash[home_id] += game.home_goals.to_i
      teams_hash[away_id] += game.away_goals.to_i
    end

    highest_score = teams_hash.values.max
    highest_scoring_id = teams_hash.key(highest_score).to_s
    best_offense_team = @teams.find {|team| team.team_id == highest_scoring_id}.teamName
  end

  def worst_offense
    teams_hash = {}
    @games.each do |game|
      home_id = game.home_team_id.to_sym
      away_id = game.away_team_id.to_sym
      if !(teams_hash.has_key?(home_id))
        teams_hash[home_id] = 0
      end

      if !(teams_hash.has_key?(away_id))
        teams_hash[away_id] = 0
      end

      teams_hash[home_id] += game.home_goals.to_i
      teams_hash[away_id] += game.away_goals.to_i
    end

    lowest_score = teams_hash.values.min
    lowest_scoring_id = teams_hash.key(lowest_score).to_s
    worst_offense_team = @teams.find {|team| team.team_id == lowest_scoring_id}.teamName
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