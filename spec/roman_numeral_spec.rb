require 'spec_helper'
require 'pry'
require_relative '../lib/roman_numeral'

describe Fixnum do
  describe '#to_roman' do
    it 'returns the correct roman numeral between 1-3' do
      expect((2).to_roman.roman).to eq 'II'
      expect((3).to_roman.roman).to eq 'III'
    end

    it 'returns the correct roman numeral for int close to 5' do
      expect((4).to_roman.roman).to eq 'IV'
      expect((5).to_roman.roman).to eq 'V'
    end

    it 'returns the correct roman numeral for int btwn 5 10' do
      expect((6).to_roman.roman).to eq 'VI'
      expect((8).to_roman.roman).to eq 'VIII'
      expect((9).to_roman.roman).to eq 'IX'
      expect((10).to_roman.roman).to eq 'X'
    end

    it 'returns the correct roman numeral for int btwn 11, 48' do
      expect((11).to_roman.roman).to eq 'XI'
      expect((14).to_roman.roman).to eq 'XIV'
      expect((29).to_roman.roman).to eq 'XXIX'
      expect((35).to_roman.roman).to eq 'XXXV'
    end

    it 'returns the correct roman numeral for int btwn 49, 101' do
      expect((49).to_roman.roman).to eq 'XLIX'
      expect((50).to_roman.roman).to eq 'L'
      expect((91).to_roman.roman).to eq 'XCI'
      expect((101).to_roman.roman).to eq 'CI'
    end

    it 'returns the correct roman numeral for high int!!' do
      expect((424).to_roman.roman).to eq 'CDXXIV'
      expect((591).to_roman.roman).to eq 'DXCI'
      expect((909).to_roman.roman).to eq 'CMIX'
      expect((3494).to_roman.roman).to eq 'MMMCDXCIV'
      expect((4999).to_roman.roman).to eq 'MMMMCMXCIX'
    end
  end
end

describe RomanNum do
  describe '#to_arabic' do
    it 'returns an integer representing roman numeral' do
      expect((2).to_roman.to_i).to eq 2
      expect((3).to_roman.to_i).to eq 3
      expect((4).to_roman.to_i).to eq 4
      expect((5).to_roman.to_i).to eq 5
      expect((6).to_roman.to_i).to eq 6
      expect((8).to_roman.to_i).to eq 8
      expect((9).to_roman.to_i).to eq 9
      expect((10).to_roman.to_i).to eq 10
      expect((14).to_roman.to_i).to eq 14
      expect((29).to_roman.to_i).to eq 29

      expect((49).to_roman.to_i).to eq 49
      expect((50).to_roman.to_i).to eq 50
      expect((91).to_roman.to_i).to eq 91
      expect((101).to_roman.to_i).to eq 101

      expect((424).to_roman.to_i).to eq 424
      expect((909).to_roman.to_i).to eq 909
      expect((3494).to_roman.to_i).to eq 3494
      expect((4999).to_roman.to_i).to eq 4999

      # binding.pry
      expect((591).to_roman.to_i).to eq 591
    end
  end
end
