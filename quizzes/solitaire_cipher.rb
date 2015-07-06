# http://rubyquiz.com/quiz1.html

class SolitaireCipher

  def parse_input(input)
    result = Array.new
    arr = input.split('')
    arr.each do |char|
      result << char if /[A-Za-z]/.match(char)
    end
    group_and_fill(result)
  end


  def convert_input(input)
    alphabet = create_alphabet_hash
    array = Array.new
    input.each_char do |char|
      array << alphabet[char] unless char.strip.empty?
    end
    array.join(' ')
  end



  private

  def create_alphabet_hash
    arr = ('A'..'Z').to_a.zip((1..26).to_a)
    numbered_letters = Hash[arr.map {|key,value| [key, value]}]
  end

  def group_and_fill(input)
    array = Array.new

    input.each_slice(5) do |chars|
      if chars.size < 5
        chars.fill('X', chars.size, 5 - chars.size)
      end
      array << chars.join.upcase!
    end

    array.join(' ')
  end
end
