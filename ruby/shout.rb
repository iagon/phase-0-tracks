module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!!" + " :)"
  end
end


class Gordon_Ramsay
  include Shout
end

class Auctioneer
  include Shout
end

gr = Gordon_Ramsay.new
puts gr.yell_angrily("It's Raw")
puts gr.yelling_happily("Perfect")

auctioneer = Auctioneer.new
puts auctioneer.yell_angrily("Don't touch the items")
puts auctioneer.yelling_happily("Going once..Going twice..Sooollld")

=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!!" + " :)"
  end

end

Shout.yell_angrily("noooo")
Shout.yelling_happily("yesss")
=end