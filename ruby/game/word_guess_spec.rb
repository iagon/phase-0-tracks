# Only functions on class methods, driver code cannot be included

require_relative 'word_guess'

describe WordGame do
  let(:game) {WordGame.new("test")}

  it "prints updated string showing whether letter is in word or not returns guesses remaining" do
    expect(game.guess('s')).to eq 6
  end

  it "checks to see if total guessed letters prints string and ends game" do
    expect(game.win).to eq nil
  end

  it "Prints string and ends game when no guesses left" do
    expect(game.lose).to eq nil
  end

end