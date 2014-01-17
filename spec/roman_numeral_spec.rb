require 'spec_helper'
require_relative '../lib/roman_numeral'

describe '#to_roman' do
### accept a single Integer as an argument and
### return a String with the value being the equivalent
  it 'returns a valid roman numeral' do
    expect(%w{I V X L C D M}).to include to_roman(1)
  end
  it 'returns the correct roman numeral between 1-3' do
    expect(to_roman(2)).to eq 'II'
    expect(to_roman(3)).to eq 'III'
  end

  it 'returns the correct roman numeral for int close to 5' do
    expect(to_roman(4)).to eq 'IV'
    expect(to_roman(5)).to eq 'V'
  end
end

describe '#to_arabic' do

end
