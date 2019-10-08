a = {}
p a

b = Hash.new
p b

c = {"food"=>"pizza", "car"=>"ferrari"}
p c
p c.keys
p c.values
p c["food"]
p c["car"]

d = {
   name: "Christian",
   profession: "Scientist"
}

job = {
  position: "Data scientist",
  location: "USA"
}
p d
p d[:name]
p d[:profession]

puts d.has_key?(:name)
p d.merge(job)
