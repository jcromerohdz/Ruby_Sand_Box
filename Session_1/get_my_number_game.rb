# Get My Number Game
# Written by: jcromerohdz

puts "Welcome to 'Get My Nummber!'"

# Get the player's name, and greet them.
print "Whast's your name? "
input = gets
name = input.chop
puts "Welcome, #{name}!"

# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Keep track of how many guesses the player has made. Before each guess,
# let them know how many guesses (out of 10) they have left.
num_guesses = 0
guess_it = false

# Keep the player guessing until ther chances are done
until num_guesses == 10 || guess_it
    puts "You've got #{10 - num_guesses} guesses left."

    # Prompt th eplayer to make a guess as to what the taret number is.
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1

    # If the player's guess is less than the target number, say, "Ooops. Your guess was LOW. "
    # If the player's guess is greater than than target number, say, "Ooops. Your gyess was HIGH"
    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    # If the player's guess is equal to the target number, tell them, "Good job, [name]!
    # you my number in [number of guesses] guesses!"
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guess_it = true
    end
end
# If the player runs out of turns without guessing correctly, say, "Sorry. You didn't get my
# number. My number was [target]."
unless guess_it
    puts "Sorry. You didn't get my number. (it was #{target}.)"
end