require 'spec_helper'

describe FizzBuzz, '#hello' do
  context 'says hello world' do
    it 'should say hello world' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.hello).to eq 'Hello World'
    end
  end
end
