require 'spec_helper'
require_relative '../lib/roman_numeral'

describe RomanNum do
  describe '#to_roman' do

    it 'returns the correct roman numeral between 1-3' do
      expect(RomanNum.new(2).roman).to eq 'II'
      expect(RomanNum.new(3).roman).to eq 'III'
    end

    it 'returns the correct roman numeral for int close to 5' do
      expect(RomanNum.new(4).roman).to eq 'IV'
      expect(RomanNum.new(5).roman).to eq 'V'
    end

    it 'returns the correct roman numeral for int btwn 5 10' do
      expect(RomanNum.new(6).roman).to eq 'VI'
      expect(RomanNum.new(8).roman).to eq 'VIII'
      expect(RomanNum.new(9).roman).to eq 'IX'
      expect(RomanNum.new(10).roman).to eq 'X'
    end

    it 'returns the correct roman numeral for int btwn 11, 48' do
      expect(RomanNum.new(11).roman).to eq 'XI'
      expect(RomanNum.new(14).roman).to eq 'XIV'
      expect(RomanNum.new(29).roman).to eq 'XXIX'
      expect(RomanNum.new(35).roman).to eq 'XXXV'
    end

    it 'returns the correct roman numeral for int btwn 49, 101' do
      expect(RomanNum.new(49).roman).to eq 'XLIX'
      expect(RomanNum.new(50).roman).to eq 'L'
      expect(RomanNum.new(91).roman).to eq 'XCI'
      expect(RomanNum.new(101).roman).to eq 'CI'
    end

    it 'returns the correct roman numeral for high int!!' do
      expect(RomanNum.new(424).roman).to eq 'CDXXIV'
      expect(RomanNum.new(591).roman).to eq 'DXCI'
      expect(RomanNum.new(909).roman).to eq 'CMIX'
      expect(RomanNum.new(3494).roman).to eq 'MMMCDXCIV'
      expect(RomanNum.new(4999).roman).to eq 'MMMMCMXCIX'
    end
  end

  describe '#to_arabic' do
    it 'returns an integer representing roman numeral' do
      expect(RomanNum.new(2).to_arabic).to eq 2
      expect(RomanNum.new(3).to_arabic).to eq 3
      expect(RomanNum.new(4).to_arabic).to eq 4
      expect(RomanNum.new(5).to_arabic).to eq 5
      expect(RomanNum.new(6).to_arabic).to eq 6
      expect(RomanNum.new(8).to_arabic).to eq 8
      expect(RomanNum.new(9).to_arabic).to eq 9
      expect(RomanNum.new(10).to_arabic).to eq 10
    end
  end
end
