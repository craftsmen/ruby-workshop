module TrivialPursuit
  class Card
    attr_accessor :question, :answer

    def initialize question, answer
      @question = question
      @answer = answer
    end

    def correct? guess
      guess.chomp == @answer
    end
  end

  class MultipleAnswersCard < Card
    def correct? guess
      @answer.split(",").include? guess.chomp
    end
  end

  class Game
    attr_accessor :cards

    def initialize
      @cards = []
    end

    def << card
      @cards << card
    end

    def shuffle
      @cards.shuffle!
    end
  end
end

game = TrivialPursuit::Game.new
game << TrivialPursuit::Card.new("When was created Ruby lang ?", "1995")
game << TrivialPursuit::MultipleAnswersCard.new("Where can you host your code ?", "Github,Gitlab")
game.shuffle

game.cards.each do |card|
  print "#{card.question} >"

  if card.correct? gets
    puts "Correct"
  else
    puts "Incorrect ! Answer was #{card.answer}"
  end
end
