require 'spec_helper'
require_relative '../lib/roman'

describe '#to_roman' do
  it 'takes base integer (1) and returns a Roman numeral' do
    expect(to_roman (1)).to eq "I"

  end

  it 'tests addition of Roman numerals when input integer is not part of the exception' do
    expect(to_roman(2)).to eq "II"
    expect(to_roman(3)).to eq "III"
  end
end

# exception: I can be placed before V and X to make 4 units (IV) and 9 units (IX)
# exception: X can be placed before L and C to make 40 (XL) and 90 (XC respectively)
# exception: C can be placed before D and M to make 400 (CD) and 900 (CM)
