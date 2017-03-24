class WordGame
  attr_reader :guess_count, :letter_guess
  

  def initialize(master_word)
    @master_word = master_word
    @master_arr = master_word.split('')
    @guess_count = 0
    @letter_guess = ('_' * master_word.length).split('')
  end

  def guess(letter)
    if @master_arr.include?(letter)
       @letter_guess.delete_at(@master_arr.index(letter))
       @letter_guess.insert(@master_arr.index(letter), letter)
       p @letter_guess.join(" ")
    end
  end


end


