require 'spec_helper'
require_relative '../main'

describe Fixnum do
	describe '.to_roman' do
		it 'return M for multiples of 1000' do
			expect(1000.to_roman).to eq 'm'
			expect(2000.to_roman).to eq 'mm'
		end
	end
end
