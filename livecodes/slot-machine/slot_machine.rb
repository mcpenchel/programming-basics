class SlotMachine

  attr_reader :reels

  REELS = %w(joker star bell seven cherry)

  SCORES = {
    "joker" => 50,
    "star" => 40,
    "bell" => 30,
    "seven" => 20,
    "cherry" => 10
  }

  def initialize(reels_array)
    @reels = reels_array
  end

  def score
    if @reels.all?(@reels.first)
      SCORES[@reels.first]
    elsif @reels.uniq.size == 2
      if @reels.count { |r| r == @reels.first  } == 1
        SCORES[@reels.last] / 2
      else
        SCORES[@reels.first] / 2
      end
    else
      0
    end
  end

  def play
    @reels = []

    3.times do
      @reels << REELS.sample
    end
  end
end
