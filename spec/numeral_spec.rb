require 'spec_helper'
require_relative '../numeral'

describe '#to_roman' do
  it "should return appropriate String of I's of when passed 1" do
    expect(to_roman(1)).to eq "I"
    expect(to_roman(2)).to eq "II"
    expect(to_roman(3)).to eq "III"
  end
end
