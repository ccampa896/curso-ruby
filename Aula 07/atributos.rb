class Dog
  attr_accessor :name, :age
end

dog = Dog.new
dog.name = "Marlon"
dog.age = 1

puts dog.name
puts dog.age