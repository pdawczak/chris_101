p "Helloo"
p "Helloo".class
p 1
p 1.class
p 1.0
p 1.0.class

name = "Chris"
p "Hello, " + name
p "Hello, #{name}"
p 'Hello, #{name}'
p "1 + 1 is #{1 + 1}, hooray!"

names = []
names.<<("Chris")
names.<<("Pawel")
p names

class People
  attr_accessor :names

  def initialize
    @names = []
  end

  # attr_reader :names
  # def names
  #   @names
  # end

  # attr_writer :names
  # def names=(names)
  #   @names = names
  # end

  def <<(name)
    @names << name
  end
end

people = People.new
people << "Chris"
people << "Pawel"
p "People: #{people.names}"

class Foo
  def self.hello(name)
    p "Hello, #{name}".upcase
  end

  def hello name
    p "Hello, #{name}"
  end
end

Foo.new.hello "Chris"
Foo.hello "Chris"

class Person
  attr_accessor :first_name, :last_name
  attr_accessor :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age
  end
end

class Fixnum
  def hello
    "Hello, I'm #{self}"
  end
end

p 5.hello

3.times { p "I love Ruby" }
