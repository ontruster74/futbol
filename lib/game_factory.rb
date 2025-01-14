class GameFactory
  def create_games(filepath)
    games = []
    CSV.foreach(filepath, headers: true, header_converters: :symbol) do |row|
      games << Game.new(row[:id].to_i, row[:first_name], row[:last_name], row[:age].to_i)
    end
    return games
  end
end