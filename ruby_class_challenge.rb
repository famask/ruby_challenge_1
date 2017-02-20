# create a few people and create a few siblings
# Then write a method called "introduce" 
# should print out "Hello my name is fds. I am 54 years old. My sublings are dsfsf & aggf."

class Person
  attr_accessor :name, :age, :siblings
  
  def initialize(name, age)
    @name = name
    @age = age
    @siblings = [] 
  
  end

  def introduce
    puts "Hello, my name is #{@name}. I am #{@age} years old. My siblings are #{@siblings[0]} who is #{@siblings[1]} years old and #{@siblings[2]} who is #{@siblings[3]} years old."
  end

end

first_person = Person.new("Faisal", 20)
first_person.siblings = ["Saira", 34, "Omer", 42]

first_person.introduce