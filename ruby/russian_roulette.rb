title = "Welcome to my Russian roulette game"
puts title
puts "-" * title.size

3.times do
  dead = rand(1..6)

  print "Choose your lucky number > "
  number = gets.to_i

  puts "You chose #{number}. Wait, wheel is spinning ..."

  if dead == number
    puts "BLAM. You're dead."
    break
  else
    puts "*clic* . Lucky, aren't you ? (Dead number : #{dead})"
  end
end
