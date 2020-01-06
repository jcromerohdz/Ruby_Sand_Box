#

def reverse(str)
  reversed = ''
  str.each_char do |character |
    reversed = character + reversed
  end
  reversed
end


puts reverse('apple')
puts reverse('olleh')
puts reverse('Greetings!')

