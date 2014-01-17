require 'spec_helper'
require_relative '../arabic_numeral_kata'

describe '#toArabic' do
		it "should return nil for empty string" do
     expect(toArabic('')).to eq nil
  end
end
