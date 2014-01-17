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

  it 'returns the correct roman numeral for int btwn 49, 101' do
    expect(to_roman(49)).to eq 'XLIX'
    expect(to_roman(50)).to eq 'L'
    expect(to_roman(91)).to eq 'XCI'
    expect(to_roman(101)).to eq 'CI'
  end

  it 'returns the correct roman numeral for high int!!' do
    expect(to_roman(424)).to eq 'CDXXIV'
    expect(to_roman(591)).to eq 'DXCI'
    expect(to_roman(909)).to eq 'CMIX'
    expect(to_roman(3494)).to eq 'MMMCDXCIV'
    expect(to_roman(4999)).to eq 'MMMMCMXCIX'
  end
end








describe '#to_arabic' do

end
