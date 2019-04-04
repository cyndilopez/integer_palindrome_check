# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: log10(n) where n is the number
# Space complexity: constant - only a certain number of variables are being saved

def is_palindrome(number)
  return false if number == nil
  return true if number == 0
  reverse = 0
  while number > 0
    temp = number # can check if temp = reverse
    digit = number % 10
    reverse = reverse * 10 + digit
    number = number / 10
    # number_even = number * 10 + digit
    p "temp: #{temp}"
    p "digit: #{digit}"
    p "reverse: #{reverse}"
    p "number: #{number}"

    return true if number == reverse || temp == reverse
    # return true if number == reverse
  end
  return false
end

p is_palindrome(1234321)
