require_relative "../citizen"

describe Citizen do
  describe '#can_vote?' do
    it 'returns true if the citizen is older than 17 years old' do
      matheus = Citizen.new("Matheus", "Penchel", 18)

      expect(matheus.can_vote?).to eq(true)
    end

    it 'returns false if the citizen is younger than 18 years old' do
      baby_matt = Citizen.new("Baby Matt", "Penchel", 17)

      expect(baby_matt.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns the first_name concatenated with the last_name' do
      saruman = Citizen.new("Saruman", "Many-Colors", 900)

      expect(saruman.full_name).to eq("Saruman Many-colors")
    end

    it 'returns the last_name capitalized' do
      gabriel = Citizen.new("gABriEL", "ferrO", 21)

      expect(gabriel.full_name).to eq("Gabriel Ferro")
    end
  end
end


#initialize(first_name, last_name, age)
#can_vote? (boolean)
#full_name (String)
