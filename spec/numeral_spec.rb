require 'spec_helper'
require_relative '../numeral'

describe '#to_roman' do
  it "should return appropriate String of I's of when passed 1-3" do
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
  it "should return appropriate String of stuff that requires I through X (1-39)" do
    expect(to_roman(9)).to eq "IX"
    expect(to_roman(12)).to eq "XII"
    expect(to_roman(18)).to eq "XVIII"
    expect(to_roman(25)).to eq "XXV"
    expect(to_roman(38)).to eq "XXXVIII"
  end
  it "should return appropriate String of stuff that needs L (1-89)" do
    expect(to_roman(42)).to eq "XLII"
    expect(to_roman(58)).to eq "LVIII"
    expect(to_roman(65)).to eq "LXV"
    expect(to_roman(79)).to eq "LXXIX"
    expect(to_roman(88)).to eq "LXXXVIII"
  end
  it "should return appropriate String of stuff that needs C (1-399)" do
    expect(to_roman(92)).to eq "XCII"
    expect(to_roman(145)).to eq "CXLV"
    expect(to_roman(292)).to eq "CCXCII"
    expect(to_roman(303)).to eq "CCCIII"
    expect(to_roman(399)).to eq "CCCXCIX"
  end
  it "should return appropriate String of stuff that needs D (1-899)" do
    expect(to_roman(400)).to eq "CD"
    expect(to_roman(455)).to eq "CDLV"
    expect(to_roman(500)).to eq "D"
    expect(to_roman(675)).to eq "DCLXXV"
    expect(to_roman(899)).to eq "DCCCXCIX"
  end
  it "should return appropriate String of stuff that needs M (1-3999)" do
    expect(to_roman(900)).to eq "CM"
    expect(to_roman(1050)).to eq "ML"
    expect(to_roman(2325)).to eq "MMCCCXXV"
    expect(to_roman(3999)).to eq "MMMCMXCIX"
  end
end

describe '#to_arabic' do
  it "should return appropriate integers for a String of I's" do
    expect(to_arabic("I")).to eq 1
    expect(to_arabic("III")).to eq 3
  end
  it "should return appropriate ints for strings using I's or V's only" do
    expect(to_arabic("IV")).to eq 4
    expect(to_arabic("V")).to eq 5
    expect(to_arabic("VI")).to eq 6
    expect(to_arabic("VII")).to eq 7
    expect(to_arabic("VIII")).to eq 8
  end
end
