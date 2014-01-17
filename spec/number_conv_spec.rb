require 'spec_helper'
require_relative '../number_conv'

	describe "#to_roman(num)" do
		it "takes numbers one and returns I" do
			expect(to_roman(1)).to eq "I"
			expect(to_roman(0)).to eq "nope"
		end

		it "takes numbers two and returns II" do
			expect(to_roman(2)).to eq "II"
			expect(to_roman(0)).to eq "nope"
		end

		it "takes numbers three and returns III" do
			expect(to_roman(3)).to eq "III"
			expect(to_roman(0)).to eq "nope"
		end

		it "takes numbers four and returns IV" do
			expect(to_roman(4)).to eq "IV"
			expect(to_roman(0)).to eq "nope"
		end
		it "takes numbers five and returns V" do
			expect(to_roman(5)).to eq "V"
		end
		it "takes numbers six and returns VI" do
			expect(to_roman(6)).to eq "VI"
		end
		it "takes numbers seven and returns VII" do
			expect(to_roman(7)).to eq "VII"
		end
		it "takes numbers eight and returns VIII" do
			expect(to_roman(7)).to eq "VII"
		end
		it "takes numbers nine and returns IX" do
			expect(to_roman(9)).to eq "IX"
		end
		it "takes numbers 10 and returns X" do
			expect(to_roman(10)).to eq "X"
			expect(to_roman(20)).to eq "XX"
		end
		it "takes numbers 40 and 50 and converts " do
			expect(to_roman(40)).to eq "XL"
			expect(to_roman(50)).to eq "L"
			expect(to_roman(51)).to eq "LI"
		end
		it "takes numbers 90 and 100 and converts " do
			expect(to_roman(90)).to eq "XC"
			expect(to_roman(100)).to eq "C"
			expect(to_roman(107)).to eq "CVII"
		end
		it "takes numbers 400 and 500 and converts " do
			expect(to_roman(400)).to eq "CD"
			expect(to_roman(500)).to eq "D"
			expect(to_roman(515)).to eq "DXV"
		end
		it "takes numbers 900 and 1000 and converts " do
			expect(to_roman(900)).to eq "CM"
			expect(to_roman(1000)).to eq "M"
			expect(to_roman(2010)).to eq "MMX"
		end
	end


describe "#to_arabic(roman)" do
		it "takes roman I and returns number 1" do
			expect(to_arabic("I")).to eq 1
		end
		it "takes roman II and returns number 2" do
			expect(to_arabic("II")).to eq 2
		end
		it "takes roman III and returns number 3" do
			expect(to_arabic("III")).to eq 3
		end
		it "takes roman IV and returns number 4" do
			expect(to_arabic("IV")).to eq  4
		end
		it "takes roman V and returns number 5" do
			expect(to_arabic("V")).to eq 5
		end
		it "takes roman VI and returns number 6" do
			expect(to_arabic("VI")).to eq 6
		end
		it "takes roman numerals VII and returns number 7" do
			expect(to_arabic("VII")).to eq 7
		end
		it "takes roman numerals VIII and returns number 8" do
			expect(to_arabic("VIII")).to eq 8
		end
		it "takes roman numerals IX and returns number 9" do
			expect(to_arabic("IX")).to eq 9
		end
		it "takes roman numerals X and returns number 10" do
			expect(to_arabic("X")).to eq 10
		end
		it "takes roman number XX and returns number 20" do
			expect(to_arabic("XX")).to eq 20
		end
end






