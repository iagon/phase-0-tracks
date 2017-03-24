require_relative 'word_guess'

describe wordgame do
  let(:wordgame) {WordGame.new("test")}

  it "returns updated string showing whether letter is in word or not" do
    game.guess('s').to eq "_ _ s _"
  end

  it "returns updated string showing whether letter is in word or not" do
    game.guess('p') "_ _ _ _"
  end

  it "checks to see if total guessed letters match word if true returns string" do
    game.win.to eq "Wow you got it!"
  end

  it "returns string when no guesses left" do
    game.lose.to eq "Nope, better luck next time sucker."
  end

end