class WordGame
  attr_reader :total_guesses, :letter_guess, :master_word, :is_over
  

  def initialize(master_word)
    @master_word = master_word
    @master_arr = master_word.split('')
    @letter_guess = ( '_' * master_word.length).split('')
    @past_guess = []
    @is_over = FALSE
    @total_guesses = master_word.length + 3
  end

  def guess(letter)
    if @past_guess.include?(letter)
        puts "That letter has already been guessed."
    end
    if @master_arr.include?(letter)
       @master_arr.each_with_index do |char, index| # Originally used delete_at and insert but had trouble with words with multiple instances of a letter
        if char == letter
          @letter_guess[index] = char
        end
        end
       @letter_guess.join(' ')
       p "Letter match! Updated board:"
       p @letter_guess.join(' ')
    else 
      p "Nope, letter not included."
      p @letter_guess.join(' ')
    end
    @past_guess << letter
    @total_guesses -= 1
 end
  
  def win
    if @letter_guess.join("") == @master_word
    p "Wow you got it!"
    @is_over = TRUE
    end
  end

  def lose
    if @total_guesses == 0
    p "No match! Better luck next time sucker."
    @is_over = TRUE
    end
  end

end

# Driver

p "This is a word guessing game."
p "The first person will choose a word and the second will try to guess it."
p "Ready?? Second person look away...First person please choose a word:"
master_word = gets.chomp
game = WordGame.new(master_word)
puts "\n"*40 # Remove word from screen
p "Okay got it. Second person you're up."
p game.letter_guess
p "The word is #{game.master_word.length} letters long. You have #{game.total_guesses} guesses remaining."


until game.win || game.lose
  p "Please choose a letter:"
  p "You have #{game.total_guesses} guesses remaining."
  letter = gets.chomp
  game.guess(letter)
end






