class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    puts "player1"+player1.inspect + " player2"+player2.inspect
    pair=player1[1]+player2[1]
    case pair
      when 'PS','RP','SR'then
        return player2
      when 'SP','PR','RS','PP','SS','RR' then
        return player1
      else
        e = RockPaperScissors::NoSuchStrategyError.new(
            "Strategy must be one of R,P,S"
            )
        raise e
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0].class==Array and tournament[0][0].class==String
      puts "Calc:"+ tournament.inspect
      return self.winner(tournament[0], tournament[1])
    elsif tournament[0].class==Array and tournament[0][0].class==Array
      puts "Rescure:"+ tournament.inspect
      w1 = self.tournament_winner(tournament[0])
      w2 = self.tournament_winner(tournament[1])
      return self.winner(w1,w2)
    end
  end
end

tourney = [
  [
    [ ["Armando", "P"], ["Dave", "S" ] ],
    [ ["Richard", "R"], ["Michael", "S"] ]
  ],
  [
    [ ["Allen", "S"], ["Omer", "P" ] ],
    [ ["David E.", "R"], ["Richard X.", "P"] ]
  ]
]


#raise StandardError.new

#e = RockPaperScissors::NoSuchStrategyError.new
#raise e

#puts RockPaperScissors.winner(['Armando','R'], ['Dave','w'])
#puts RockPaperScissors.tournament_winner(tourney)

