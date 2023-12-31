# Given an integer n, return a string array answer (1-indexed) where:

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "" if i is divisible by 3.
# answer[i] == "" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.
 
# Input: n = 3
# Output: ["1","2","Fizz"]

def fizz_buzz(n)
  result = []
  1.upto(n) do |i|
    if (i % 3).zero? && (i % 5).zero?
      result << 'FizzBuzz'
    elsif (i % 3).zero?
      result << 'Fizz'
    elsif (i % 5).zero?
      result << 'Buzz'
    else
      result << i.to_s
    end
  end
  result
end

n = 3
p fizz_buzz(n)



