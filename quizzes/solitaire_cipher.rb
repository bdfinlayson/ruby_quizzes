# http://rubyquiz.com/quiz1.html

class SolitaireCipher

  def parse_input(input)
    #discard all non letter characters
    #uppercase the remaining characters
    result = Array.new
    arr = input.split('')
    arr.each do |char|
      result << char if /[A-Za-z]/.match(char)
    end
    group_and_fill(result)
  end

  private

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
