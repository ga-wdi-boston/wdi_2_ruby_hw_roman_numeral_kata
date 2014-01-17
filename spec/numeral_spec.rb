require 'spec_helper'
require_relative '../numeral'

describe '#to_roman' do
  it "should return appropriate String of I's of when passed 1" do
    expect(to_roman(1)).to eq "I"
    expect(to_roman(2)).to eq "II"
    expect(to_roman(3)).to eq "III"
  end
  it "should return appropriate String of only I's and V's for 4-8" do
    expect(to_roman(4)).to eq "IV"
    expect(to_roman(5)).to eq "V"
    expect(to_roman(6)).to eq "VI"
    expect(to_roman(7)).to eq "VII"
    expect(to_roman(8)).to eq "VIII"
  end
end
