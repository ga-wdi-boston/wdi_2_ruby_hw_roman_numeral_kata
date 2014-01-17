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
			expect(to_roman(3)).to eq "III"
		end
		it "takes numbers six and returns VI" do
			expect(to_roman(6)).to eq "VI"
			expect(to_roman(3)).to eq "III"
		end
		it "takes numbers seven and returns VII" do
			expect(to_roman(7)).to eq "VII"
			expect(to_roman(3)).to eq "III"
		end
		it "takes numbers eight and returns VIII" do
			expect(to_roman(7)).to eq "VII"
			expect(to_roman(3)).to eq "III"
		end
	end
