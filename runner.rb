# runner.rb
require './lib/stat_tracker'
require './lib/game'
require './lib/team'
require './lib/game_team'
require 'csv'

game_path = './data/simple_games.csv'
team_path = './data/simple_teams.csv'
game_teams_path = './data/simple_game_teams.csv'

locations = {
  games: game_path,
  teams: team_path,
  game_teams: game_teams_path
}

stat_tracker = StatTracker.from_csv(locations)

require 'pry'; binding.pry
