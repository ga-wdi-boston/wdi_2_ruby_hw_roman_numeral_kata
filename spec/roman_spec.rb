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

  # it 'tests that in Roman numeral format, V(5) plus III(3) equals VIII (8)' do
  #   expect(to_roman(8)).to eq "VIII"
  # end

  # it 'tests adding in Roman numeral format to produce non-base integers' do
  #   expect(to_roman(12)).to eq "XII"
  #   expect(to_roman(31)).to eq "XXXI"
  #   expect(to_roman(70)).to eq "LXX"
  # end

  it 'tests that in Roman numeral format, I(1) minus V(5) equals IV(4)'do
    expect(to_roman(4)).to eq "IV"
  end
end

# 1-5 = 4
# 1-10 = 9
# 8 - 3 + 5
