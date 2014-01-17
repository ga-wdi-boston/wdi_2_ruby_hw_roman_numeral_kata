require 'spec_helper'
require_relative '../roman_numerals'

describe '#to_roman' do
  it 'returns the roman numeral string I when passed the integer 1' do
    expect(to_roman(1)).to eq 'I'
  end

  it 'returns the roman numeral string V when passed the integer 5' do
    expect(to_roman(5)).to eq 'V'
  end

  it 'returns the roman numeral string X when passed the integer 10' do
    expect(to_roman(10)).to eq 'X'
  end

  it 'returns the roman numeral strings II and III when passed the integers 2 and 3' do
    expect(to_roman(2)).to eq 'II'
    expect(to_roman(3)).to eq 'III'
  end

  it 'returns the roman numeral string IV when passed the integer 4' do
    expect(to_roman(4)).to eq 'IV'
  end

  it 'returns the roman numberal strings VI, VII, and VIII when passed the integers, 6, 7, and 8' do
    expect(to_roman(6)).to eq 'VI'
    expect(to_roman(7)).to eq 'VII'
    expect(to_roman(8)).to eq 'VIII'
  end

  it 'returns the roman numeral string IX when passed the integer 9' do
    expect(to_roman(9)).to eq 'IX'
  end

  it 'returns the roman numeral string CLII when passed the integer 152' do
    expect(to_roman(152)).to eq 'CLII'
  end

  it 'returns the correct roman numeral string for large integers' do
    expect(to_roman(1543)).to eq 'MDXLIII'
    expect(to_roman(1309)).to eq 'MCCCIX'
  end
end

describe '#to_arabic' do
  it 'returns the integer 1 when passed roman numeral I' do
    expect(to_arabic('I')).to eq 1
  end

  it 'returns the integer 151 when passed the string CLI' do
    expect(to_arabic('CLI')).to eq 151
  end

  it 'returns the integer 1543 when passed roman numeral MDXLIII' do
    expect(to_arabic('MDXLIII')).to eq 1543
    expect(to_arabic('MCCCIX')).to eq 1309
  end
end
