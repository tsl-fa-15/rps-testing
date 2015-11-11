class Game
  # def initialize(user_choice)
  #   @user_choice = user_choice
  # end

  def computer_choice
    choices = ['rock', 'paper', 'scissors']
    return choices.shuffle.pop
  end

  def return_winner(choice1, choice2)
    if choice1 == choice2
      return 'draw'
    elsif [choice1, choice2].sort == ['paper', 'rock'].sort
      return 'paper'
    elsif [choice1, choice2].sort == ['paper', 'scissors'].sort
      return 'scissors'
    elsif [choice1, choice2].sort == ['rock', 'scissors'].sort
      return 'rock'
    end
  end

  def outcome(user_choice, winning_choice)
    if winning_choice == 'draw'
      return 'Draw'
    else
      if user_choice == winning_choice
        return 'You win'
      else
        return 'You lose'
      end
    end
  end
end
















