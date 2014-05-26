cards = [
  { question: "When was created Ruby lang ?", answer: "1995" },
  { question: "When was created PHP lang ?", answer: "1994" }
]

cards.each do |card|
  print "#{card[:question]} >"
  guess = gets.chomp

  if guess == card[:answer]
    puts "Correct"
  else
    puts "Incorrect ! Answer was #{card[:answer]}"
  end
end
