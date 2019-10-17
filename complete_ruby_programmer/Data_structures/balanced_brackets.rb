def balanced_brackets?(string)
  # your code here
  stack = []
  string.chars.each do |char|
    case char
    when "("
      stack.push "("
    when ")"
      if stack.empty? || stack.pop != "("
        return false
      end
    when "["
      stack.push "["
    when "]"
      if stack.empty? || stack.pop != "["
        return false
      end
    when "{"
      stack.push "{"
    when "}"
      if stack.empty? || stack.pop != "{"
        return false
      end
    end
  end
  stack.empty?
end

puts balanced_brackets?("(hello)[world]")
# => true

puts balanced_brackets?("([)]")
# => false

puts balanced_brackets?("[({}{}{})([])]")
# => true
