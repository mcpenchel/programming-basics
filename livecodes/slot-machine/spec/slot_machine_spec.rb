require_relative '../slot_machine'

def generate_2_equal_reels_test(reels, score)
  it "returns #{score} if we got 2 #{reels.first} and a joker" do
    machine = SlotMachine.new(reels)
    expect(machine.score).to eq(score)
  end
end

def generate_3_equal_reels_test(reels, score)
  it "returns #{score} if we got 3 #{reels.first}" do
    machine = SlotMachine.new(reels)
    expect(machine.score).to eq(score)
  end
end

describe SlotMachine do
  describe '#score' do
    context 'when no reel is the same' do
      it "returns 0" do
        machine = SlotMachine.new(['joker', 'bell', 'star'])
        expect(machine.score).to eq(0)
      end
    end

    context 'when the three reels are the same' do
      generate_3_equal_reels_test(%w(joker joker joker), 50)
      generate_3_equal_reels_test(%w(star star star), 40)
      generate_3_equal_reels_test(%w(bell bell bell), 30)
      generate_3_equal_reels_test(%w(seven seven seven), 20)
      generate_3_equal_reels_test(%w(cherry cherry cherry), 10)
    end

    context 'when two reels are the same' do
      generate_2_equal_reels_test(%w(star star joker), 20)
      generate_2_equal_reels_test(%w(bell bell joker), 15)
      generate_2_equal_reels_test(%w(seven seven joker), 10)
      generate_2_equal_reels_test(%w(cherry cherry joker), 5)

      %w(star bell seven cherry).each do |reel|
        it "returns 25 if we got 2 jokers and 1 #{reel}" do
          machine = SlotMachine.new(['joker', 'joker', reel])
          expect(machine.score).to eq(25)
        end
      end
    end
  end

end
