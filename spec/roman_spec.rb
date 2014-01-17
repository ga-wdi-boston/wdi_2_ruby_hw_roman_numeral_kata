require 'spec_helper'
require_relative '../lib/roman'

describe '#to_roman' do
  it 'takes base integer (1) and returns a Roman numeral' do
    expect(to_roman (1)).to eq "I"
  end
  it 'takes base integer (5) and returns a Roman numeral' do
    expect(to_roman (5)).to eq "V"
  end

  it 'tests other integers in listed as keys in the roman hash' do
    expect(to_roman(4)).to eq "IV"
    expect(to_roman(90)).to eq "XC"
    expect(to_roman(500)).to eq "D"
  end
end

# exception: I can be placed before V and X to make 4 units (IV) and 9 units (IX)
# exception: X can be placed before L and C to make 40 (XL) and 90 (XC respectively)
# exception: C can be placed before D and M to make 400 (CD) and 900 (CM)
