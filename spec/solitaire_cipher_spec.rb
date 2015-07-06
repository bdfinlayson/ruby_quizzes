require 'spec_helper'

describe SolitaireCipher do
  let(:sc) { SolitaireCipher.new }

  context '#parse_input' do
    it 'should discard any non A-Z characters, capitalize output, and group characters in fives' do
      result = sc.parse_input('welcome to 59 plus park blvd!')
      expect(result).to eq 'WELCO METOP LUSPA RKBLV DXXXX'
    end
  end

  context '#convert_input' do
    it 'should convert the message from #parse_input into numbers' do
      input = 'WELCO METOP LUSPA RKBLV DXXXX'
      result = sc.convert_input(input)
      expect(result).to eq '23 5 12 3 15 13 5 20 15 16 12 21 19 16 1 18 11 2 12 22 4 24 24 24 24'
    end
  end

end
