randnum = rand(1..100)
puts 'Pick a number!'
guess = nil
count = 5
while (guess != randnum) && (count >= 0)
  guess = gets.chomp.to_i
  if guess == randnum
    puts 'The force is strong with this one!'
  elsif guess > randnum && count >= 1 then
    puts 'Pick a lower number.'
    count -= 1
  elsif count >= 1
    puts 'Try something higher'
    count -= 1
  end
end
puts "Game over, the answer was #{randnum}" if guess != randnum
