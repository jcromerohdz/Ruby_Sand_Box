# -- Description
# Given a string, return true if the string is a palindrome
# or false if it is not. Palindromes are strings that
# form the same word if it is reversed. *Do* include spaces
# and punctuation in determining if the string a palindrome.
# --- Example:
# palindrome("abba") === true
# palindrome("avcdefg") === false


def is_palindrome?(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      is_palindrome?(string[1..-2])
    else
      false
    end
  end
end

puts is_palindrome?("oso")
puts is_palindrome?("abba")
