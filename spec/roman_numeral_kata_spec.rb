require 'spec_helper'
require_relative '../roman_numeral_kata'

  describe "converting arabic to roman numerals" do
  	describe "romans didn't have 0" do
    	it "converts 0 to a blank string" do
      	expect(convert(0)).to eq("")
    	end
  	end
  end

