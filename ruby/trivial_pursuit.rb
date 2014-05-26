first = "When was created Ruby lang ?|1995"
second = "When was created PHP lang ?|1994"
questions = [first, second]

questions.each do |question|
  question, answer = question.split('|')
  print "#{question} >"
  guess = gets.chomp

  if guess == answer
    puts "Correct"
  else
    puts "Incorrect ! Answer was #{answer}"
  end
end
