class Game

  def initialize(choice1, choice2)
    @choice1 = choice1.downcase
    @choice2 = choice2.downcase
  end

  def play
    if @choice1 == "rock" && @choice2 == "scissors"
      return "Player 1 plays Rock and wins!"
    elsif @choice1 == "scissors" && @choice2 == "rock"
        return "Player 2 plays Rock and wins!"
    elsif @choice1 == "paper" && @choice2 == "rock"
      return "Player 1 plays Paper and wins!"
    elsif @choice1 == "rock" && @choice2 == "paper"
      return "Player 2 plays Paper and wins!"
    elsif @choice1 == "scissors" && @choice2 == "paper"
      return "Player 1 plays Scissors and wins!"
    elsif @choice1 == "paper" && @choice2 == "scissors"
      return "Player 2 plays Scissors and wins!"
    elsif @choice1 == @choice2
      return "no one wins! Try again!"
    end
  end

end
