require 'spec_helper'
require_relative '../numeral'
require_relative '../roman_class'

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
   it "should return appropriate ints of string that has I through X (1-39)" do
    expect(to_arabic("IX")).to eq 9
    expect(to_arabic("XII")).to eq 12
    expect(to_arabic("XVIII")).to eq 18
    expect(to_arabic("XXV")).to eq 25
    expect(to_arabic("XXXVIII")).to eq 38
  end
  it "should return appropriate ints of string that has L" do
    expect(to_arabic("XLII")).to eq 42
    expect(to_arabic("LVIII")).to eq 58
    expect(to_arabic("LXV")).to eq 65
    expect(to_arabic("LXXIX")).to eq 79
    expect(to_arabic("LXXXVIII")).to eq 88
  end
  it "should return appropriate ints of string that has C (1-399)" do
    expect(to_arabic("XCII")).to eq 92
    expect(to_arabic("CXLV")).to eq 145
    expect(to_arabic("CCXCII")).to eq 292
    expect(to_arabic("CCCIII")).to eq 303
    expect(to_arabic("CCCXCIX")).to eq 399
  end
  it "should return appropriate ints of string that has D (1-899)" do
    expect(to_arabic("CD")).to eq 400
    expect(to_arabic("CDLV")).to eq 455
    expect(to_arabic("D")).to eq 500
    expect(to_arabic("DCLXXV")).to eq 675
    expect(to_arabic("DCCCXCIX")).to eq 899
  end
   it "should return appropriate ints of string that has M (1-3999)" do
    expect(to_arabic("CM")).to eq 900
    expect(to_arabic("ML")).to eq 1050
    expect(to_arabic("MMCCCXXV")).to eq 2325
    expect(to_arabic("MMMCMXCIX")).to eq 3999
  end
end

describe RomanNum do
  describe '#initialize' do
    it 'raises an error when passed an invalid string' do
      expect {RomanNum.new("Prescott")}.to raise_error "Not a valid Roman numeral!"
    end
  end
  describe '#to_i' do
    it 'should return the arabic representation of the roman numeral' do
      expect(RomanNum.new("XXX").to_i).to eq 30
      expect(RomanNum.new("ML").to_i).to eq 1050
      expect(RomanNum.new("MMMCMXCIX").to_i).to eq 3999
    end
  end
  describe '#puts' do
    it 'should return the string representation of the RomanNum instance' do
      expect(RomanNum.new("XXX").to_s).to eq "XXX"
      expect(RomanNum.new("DCLXXV").to_s).to eq "DCLXXV"
    end
  end
end

describe Fixnum do
  describe '#to_roman' do
    it 'returns a RomanNum instance when called' do
      expect(5.to_roman.class).to eq RomanNum
      expect(142.to_roman.to_i).to eq 142
      expect(1050.to_roman.to_s).to eq "ML"
    end
  end
end
