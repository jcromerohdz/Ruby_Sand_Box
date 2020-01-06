# Given a string, return a new string with the reversed order of characters.
# example reverse('apple') === 'elppa'
# reverse('hello') === 'elppa'
# reverse('Greetings!') === '!sgniteerG'

def reverse(str)
  reversed = ''
  str.each_char do |character |
    reversed = character + reversed
  end
  reversed
end


puts reverse('apple')
puts reverse('hello')
puts reverse('Greetings!')

