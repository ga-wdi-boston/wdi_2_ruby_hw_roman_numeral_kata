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

  it 'returns the correct roman numeral for int btwn 5 10' do
    expect(to_roman(6)).to eq 'VI'
    expect(to_roman(8)).to eq 'VIII'
    expect(to_roman(9)).to eq 'IX'
    expect(to_roman(10)).to eq 'X'
  end

  it 'returns the correct roman numeral for int btwn 11, 48' do
    expect(to_roman(11)).to eq 'XI'
    expect(to_roman(14)).to eq 'XIV'
    expect(to_roman(29)).to eq 'XXIX'
    expect(to_roman(35)).to eq 'XXXV'
  end
end








describe '#to_arabic' do

end
