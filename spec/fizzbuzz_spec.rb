require 'spec_helper'

describe FizzBuzz, '#is_multiple_of_3?' do
  context 'should find a multiple of 3' do
    it 'should find the multiple of 3 of a single number' do
      fb = FizzBuzz.new
      expect(fb.is_multiple_of_3?(9)).to eq true
    end

    it 'should return false for numbers not multiples of 3' do
      fb = FizzBuzz.new
      expect(fb.is_multiple_of_3?(10)).to eq false
    end
  end
end

describe FizzBuzz, '#is_multiple_of_5?' do
  context 'should find a multiple of 5' do
    it 'should find the multiple of 5 of a single number' do
      fb = FizzBuzz.new
      expect(fb.is_multiple_of_5?(10)).to eq true
    end

    it 'should return false for numbers not multiples of 5' do
      fb = FizzBuzz.new
      expect(fb.is_multiple_of_5?(7)).to eq false
    end
  end
end

describe FizzBuzz, '#is_multiple_of_both?' do
  context 'should determine if number is multiple of 3 and 5' do
    it 'should return true if conditions are met' do
      fb = FizzBuzz.new
      expect(fb.is_multiple_of_both?(15)).to eq true
    end
  end
end

describe FizzBuzz, '#compile_result' do
  context 'should iterate x times to find the result' do
    it 'should return an array with the correct result' do
      fb = FizzBuzz.new
      expect(fb.compile_result(15)).to eq [1,2,'Fizz',4,'Buzz','Fizz',7,8,'Fizz','Buzz',11,'Fizz',13,14,'FizzBuzz']
    end
  end
end
