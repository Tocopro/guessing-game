
# get a number from the user
puts 'Welcome, To geuss my number'

# get the players name
print 'Whats your name: '
nameInputs = gets
name = nameInputs.chomp
puts "Welcome #{name}"

# store a random number for the players
puts 'I hava a random number between 1 and 100'

puts 'Can you guess the number'
targetNumber = rand(1..100)

# players number of guesses
guessNumber = 0

# Track if the player has guessed correctly
guessCorrect = false

until guessNumber == 10 || guessCorrect
  puts "You have #{10 - guessNumber} guesses remaining"
  print 'Make a guess: '
  guess = gets.to_i
  guessNumber += 1
  # compare the guess to the target
  # print the appropriate message
  if guess < targetNumber
    puts 'Your guess is too low'
  elsif guess > targetNumber
    puts 'Your guess is too high'
  elsif guess == targetNumber
    puts 'Good Your Guess is Right'
    puts "Your trial are #{guessNumber} guesses"
    guessCorrect = true
  end
end

# if the players guesses exceeded 10, show the target number.
unless guessCorrect
  puts "Sorry. You exceeded the number of guesses. the actual number was #{targetNumber}" unless guessCorrect
end
