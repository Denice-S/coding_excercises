secret_word="elephant"
guess=""
guess_count=0
guess_limit =3
out_of_guesses=false
puts "Welcome to  my guessing game. Try and guess my secret word"
while guess !=secret_word and !out_of_guesses
    if guess_count < guess_limit
    puts"Enter your guess: "
    guess=gets.chomp
    guess_count +=1
    else
        out_of_guesses=true
    end
end

if out_of_guesses
    puts "You lose"
else
    puts "Yay you guessed my word! "
end
