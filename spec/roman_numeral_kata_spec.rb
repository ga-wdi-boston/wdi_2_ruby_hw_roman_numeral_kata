require 'spec_helper'
require_relative '../roman_numeral_kata'

describe 'Numbers' do

	[[ 1, "I" ], [ 5, "V" ], [ 10, "X"], [ 50, "L"], [ 100, "C"], [ 500, "D"], [ 1000, "M"]].each do |pair|

		it "converts #{pair[1]} for #{pair[0]}" do
			number = Numbers.new(1)
			expect(number.toRoman).to eq("I")
		end


	end
end
