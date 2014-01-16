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

	end
