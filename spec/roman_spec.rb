require 'spec_helper'
require_relative '../lib/roman'

describe '#to_roman' do
  it 'takes an integer and returns a Roman numeral' do
    expect(to_roman (1)).to eq "I"
  end
end

