require 'spec_helper'
require_relative '../lib/roman_numeral'

describe '#to_roman' do
### accept a single Integer as an argument and
### return a String with the value being the equivalent
  it 'returns a valid roman numeral' do
    expect(%w{I II III IV V VI VII VIII IX X}).to include to_roman(2)
  end
end

describe '#to_arabic' do

end
