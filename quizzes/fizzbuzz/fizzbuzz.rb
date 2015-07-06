# http://rubyquiz.com/quiz126.html

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the
# number and for the multiples of five print “Buzz”. For
# numbers which are multiples of both three and five
# print “FizzBuzz”.


class FizzBuzz

  def compile_result(iterations)
    array = Array.new

    iterations.times do |num|
      if is_multiple_of_both?(num.next)
        array << "FizzBuzz"
      elsif is_multiple_of_3?(num.next)
        array << "Fizz"
      elsif is_multiple_of_5?(num.next)
        array << "Buzz"
      else
        array << num.next
      end
    end

    print_fizzbuzz(array)
  end

  def print_fizzbuzz(array)
    array.each { |item| puts item }
  end

  def is_multiple_of_3?(num)
    num % 3 == 0 ? true : false
  end

  def is_multiple_of_5?(num)
    num % 5 == 0 ? true : false
  end

  def is_multiple_of_both?(num)
    true if is_multiple_of_3?(num) && is_multiple_of_5?(num)
  end
end
