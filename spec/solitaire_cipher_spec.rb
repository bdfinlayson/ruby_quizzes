require 'spec_helper'

describe SolitaireCipher do
  let(:sc) { SolitaireCipher.new }

  context '#parse_input' do
    it 'should discard any non A-Z characters, capitalize output, and group characters in fives' do
      result = sc.parse_input('welcome to 59 plus park blvd!')
      expect(result).to eq 'WELCO METOP LUSPA RKBLV DXXXX'
    end
  end

end
