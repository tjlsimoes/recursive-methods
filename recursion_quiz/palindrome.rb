#  Define a recursive function that returns true if a string is a palindrome and false otherwise.

# def palindrome?(string)
#     string.downcase == string.downcase.reverse
# end

# def palindrome?(string, str_length)

#     if string[str_length - 1] == string[-str_length]

#         if (str_length - 2) == -1

#             return true
#         end

#         palindrome?(string, str_length - 1)
#     else
#         return false

#     end
# end

# p palindrome?("racecar", "racecar".length)

# p palindrome?("bye", "bye".length)


#  Solution:

def palindrome(string)
    if string.length == 1 || string.length == 0
      true
    else
      if string[0] == string[-1]
        palindrome(string[1..-2])
      else
        false
      end
    end
  end


p palindrome("racecar")

p palindrome("bye")