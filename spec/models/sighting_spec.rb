require 'rails_helper'

RSpec.describe Sighting, type: :model do

  it 'is not valid without a latitude' do
    sight = Sighting.create(
      longitude: "103.2256 W",
      date: "2023-11-29"
    )
    expect(sight.errors[:latitude]).to_not be_empty
  end

  it 'is not valid without a longitude' do
    sight = Sighting.create(
      latitude: "36.2145 N",
      date: "2023-11-01"
    )
    expect(sight.errors[:longitude]).to_not be_empty
  end

  it 'is not valid without a date' do
    sight = Sighting.create(
      latitude: "37.1298 N",
      longitude: "105.6745 W"
    )
    expect(sight.errors[:date]).to_not be_empty
  end

end
