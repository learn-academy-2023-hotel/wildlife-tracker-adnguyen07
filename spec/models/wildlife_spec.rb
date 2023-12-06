require 'rails_helper'

RSpec.describe Wildlife, type: :model do

  it 'is not valid without a common name' do
    turkey = Wildlife.create(
      scientific_binomial: "Meleagris gallopavo"
    )
    expect(turkey.errors[:common_name]).to_not be_empty
  end

  it 'is not valid without a scientific binomial' do
    turkey = Wildlife.create(
      common_name: "turkey"
    )
    expect(turkey.errors[:scientific_binomial]).to_not be_empty
  end

end
