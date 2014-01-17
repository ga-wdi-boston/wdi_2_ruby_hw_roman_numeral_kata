require 'spec_helper'
require_relative '../lib/roman'

describe '#to_roman' do
  it 'takes a base integer (1, 5, 10, 50, 100, 500, 1000) and returns a Roman numeral' do
    expect(to_roman (1)).to eq "I"
    expect(to_roman (5)).to eq "V"
    expect(to_roman (100)).to eq "C"
    expect(to_roman (500)).to eq "D"
    expect(to_roman (1000)).to eq "M"
  end

  it 'places an "I" before a "V" when "4" is passed into the method' do
    expect(to_roman(4)).to eq "IV"
  end
end

# I can be placed before V and X to make 4 units (IV) and 9 units (IX)
# X can be placed before L and C to make 40 (XL) and 90 (XC respectively)
# C can be placed before D and M to make 400 (CD) and 900 (CM)
