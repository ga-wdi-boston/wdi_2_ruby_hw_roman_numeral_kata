require 'spec_helper'
require_relative '../number_conv'

	describe "#to_roman(num)" do
		it "takes numbers one and returns I" do
			expect(to_roman(1)).to eq "I"
			expect(to_roman(0)).to eq "nope"
		end
	end
