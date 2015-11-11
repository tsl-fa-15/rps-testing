require 'rails_helper'

RSpec.describe Game, type: :model do
  context '#return_winner' do
    it 'should return paper if given paper and rock' do
      game = Game.new
      expect(game.return_winner('paper', 'rock')).to eq('paper')
    end

    it 'should return paper if given rock and paper' do
      game = Game.new
      expect(game.return_winner('rock', 'paper')).to eq('paper')
    end

    it 'should return draw if given rock and rock' do
      game = Game.new
      expect(game.return_winner('rock', 'rock')).to eq('draw')
    end

    it 'should return draw if given paper and paper' do
      game = Game.new
      expect(game.return_winner('paper', 'paper')).to eq('draw')
    end

    it 'should return draw if given scissors and scissors' do
      game = Game.new
      expect(game.return_winner('scissors', 'scissors')).to eq('draw')
    end

    it 'should return rock if given rock and scissors' do
      game = Game.new
      expect(game.return_winner('rock', 'scissors')).to eq('rock')
    end

    it 'should return rock if given scissors and rock' do
      game = Game.new
      expect(game.return_winner('scissors', 'rock')).to eq('rock')
    end

    it 'should return scissors if given paper and scissors' do
      game = Game.new
      expect(game.return_winner('paper', 'scissors')).to eq('scissors')
    end

    it 'should return scissors if given scissors and paper' do
      game = Game.new
      expect(game.return_winner('scissors', 'paper')).to eq('scissors')
    end
  end

  context '#outcome' do
    it 'should return win if winning choice matches user choice' do
      game = Game.new
      user_choice = 'rock'
      computer_choice = 'scissors'
      expect(game.outcome(user_choice, game.return_winner(user_choice, computer_choice))).to eq('You win')
    end

    it 'should return lose if winning choice does not match user choice' do
      game = Game.new
      user_choice = 'rock'
      computer_choice = 'paper'
      expect(game.outcome(user_choice, game.return_winner(user_choice, computer_choice))).to eq('You lose')
    end


    it 'should return draw if choices are equal' do
      game = Game.new
      user_choice = 'rock'
      computer_choice = 'rock'
      expect(game.outcome(user_choice, game.return_winner(user_choice, computer_choice))).to eq('Draw')
    end

  end

  it 'generates choices for the computer' do
    game = Game.new
    expect(['rock', 'paper', 'scissors']).to include(game.computer_choice)
  end
end
