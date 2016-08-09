class Team
  def initialize(name, sport, organisation)
    @name = name
    @sport = sport
    @organisation = organisation
  end

  attr_accessor :name, :sport, :organisation

end

  class Player
    def initialize(name, position, special_move, team, games_played)
      @name = name
      @position = position
      @team = team
    end

    attr_accessor :name, :position, :team, :games_played

  end

  user = Player.new("Woodsy", "Bigboppa", "Dont argue", Team.new("Tigers", "Footy", "NRL"))

puts "#{user.name} is a legend.  He plays for #{user.team.name}."
