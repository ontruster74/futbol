class Game
  attr_reader :season, :type, :home_team_id, :away_goals, :home_goals, :venue, :venue_link

  def initialize(season, type, home_team_id, away_goals, home_goals, venue, venue_link)
    @season = season
    @type = type
    @home_team_id = home_team_id
    @away_goals = away_goals
    @home_goals = home_goals
    @venue = venue
    @venue_link = venue_link
  end
end