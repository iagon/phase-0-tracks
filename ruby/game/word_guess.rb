class WordGame
  attr_reader :guess_count, :letter_guess
  

  def initialize(master_word)
    @master_word = master_word
    @master_arr = master_word.split('')
    @letter_guess = ('_' * master_word.length).split('')
    @past_guess = []
    @total_guesses = master_word.length + 3
  end

  def guess(letter)
    if @past_guess.include?(letter)
        puts "That letter has already been guessed."
    end
    if @master_arr.include?(letter)
       @letter_guess.delete_at(@master_arr.index(letter))
       @letter_guess.insert(@master_arr.index(letter), letter)
       @letter_guess.join(" ")
       p "Letter match! Updated board:"
       p @letter_guess.join('')
    else 
      puts "Nope, letter not included."
    end
    @past_guess << letter
    @total_guesses -= 1
  end
  win if @letter_guess.join("") == @master_word
  lose if @total_guesses == 0

  def win
    puts "Wow you got it!"
  end

  def lose
    puts "Nope better luck next time sucker."
  end



end


