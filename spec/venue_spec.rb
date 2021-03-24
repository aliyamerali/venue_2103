require 'rspec'
require './lib/venue'

describe Venue do
  describe '#initialize' do
    it 'is a venue' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue).to be_a Venue
    end

    it 'can read the name' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue.name).to eq 'Bluebird'
    end

    it 'can read the capacity' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue.capacity).to eq 4
    end

    it 'has no patrons by default' do
      # skip
      venue = Venue.new('Bluebird', 4)
      expect(venue.patrons).to eq []
    end
  end

  # Iteration 2

  describe '#add_patron' do
    it 'returns a list of patrons' do
      # skip
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  describe '#yell_at_patrons' do
    it 'returns a list of uppercased names' do
      # skip
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end
end

# Iteration 3 - My Tests

  describe '#over_capacity?' do
    it 'returns true if the venue has more patrons that capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Donna')
      venue.add_patron('Lesley')
      venue.add_patron('Ron')
      venue.add_patron('Ann')
      venue.add_patron('Tom')

      expect(venue.over_capacity?).to eq(true)
    end

    it 'returns false if the venue does not have more patrons than capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Donna')
      venue.add_patron('Lesley')
      venue.add_patron('Ron')
      venue.add_patron('Ann')

      expect(venue.over_capacity?).to eq(false)
    end
  end

  # Iteration 4 - My Tests

  describe '#kick_out' do
    it 'removes patrons until the venue is no longer over capacity' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Donna')
      venue.add_patron('Lesley')
      venue.add_patron('Ron')
      venue.add_patron('Ann')
      venue.add_patron('Tom')

      venue.kick_out

      expect(venue.over_capacity?).to eq(false)
    end
  end
