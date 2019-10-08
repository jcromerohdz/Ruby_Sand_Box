a = []

b = [1,2,3]

puts b[2]

def give_me_a_list(arg)
  arg.length
end

give_me_a_list(b)
puts b.first
puts b.last

words = "The quick brown fox".split
p words.reverse
p words + ["1","2"]
p words.concat(["1","2"])

words.pop
p words
words.push("dog")
p words
p words[2]
p words[words.length - 1]

p words.first
p words.last
words.delete("brown")
p words
p words.take(3)
p words.fetch(2)
