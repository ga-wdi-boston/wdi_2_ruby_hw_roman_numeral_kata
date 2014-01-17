require 'spec_helper'
require_relative '../arabic_numeral_kata'

describe '#toArabic' do
 	it "should return 1 for I" do
  	expect(toArabic("I")).to eq 1
  end
  it "should result 10 for X" do
  	expect(toArabic("X")).to eq 10
  end
  it "should return 300 for CCC" do
  	expect(toArabic("CCC")).to eq 300
  end
  it "should return 543 for DXLIII" do
  	expect(toArabic("DXLIII")).to eq 543
  end

end
