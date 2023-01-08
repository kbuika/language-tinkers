puts 1 + 2 # puts simply writes onto the screen whatever comes after it.

# when you do arithmetic with integers, you'll get integer answers
puts 9/2 # => 4
# In JS you'd get 4.5, but in Ruby you get 4. This is because Ruby is a strongly typed language, 
# and it's not going to let you do something that doesn't make sense. If you want to get a decimal answer, 
# you need to use a decimal number.

# If you want to get a decimal answer, you need to use a decimal number.
puts 9.0/2 # => 4.5


# string arithmetic
puts "Hello" + " " + "World" # => "Hello World"

# string multiplication
puts "Hello" * 3 # => "HelloHelloHello"
# This is because the * operator is overloaded. It can do different things depending on the type of the operands.
# In JS you'd get NaN, but in Ruby you get "HelloHelloHello"

# puts "12" + 12 # => no implicit conversion of Integer into String (TypeError)
# This is because Ruby is a strongly typed language, and it's not going to let you do something that doesn't make sense.
# Somehow, this makes sense in JS, but not in Ruby. In JS, you'd get "1212", but in Ruby you get an error.


# variables
# camelCase is the convention for naming variables in Ruby. 
# You can use any letter, number, or underscore. 
# You can't start with a number, and you can't use any other special characters.
# You can't use reserved words like puts, puts, or puts.
# In Ruby, variables are not declared. They are simply assigned.   WTF!!!!
name = "Steve"
puts name # => "Steve"

# variables can be reassigned
name = "Bob"
puts name # => "Bob"

# variables can be reassigned to different types
name = 12
puts name # => 12


# constants
# Constants are declared with a capital letter
# Constants are not reassignable
NAME = "Steve"
puts NAME # => "Steve"
# NAME = "Bob" # => dynamic constant assignment (SyntaxError)


# Conversion
# to_i converts to integer
puts "12".to_i # => 12
# to_f converts to float
puts "12".to_f # => 12.0
# to_s converts to string
puts 12.to_s # => "12"


# A look into puts
# puts is a method. It's a function that belongs to an object.
# In Ruby, everything is an object. Even numbers, strings, and booleans.
# puts is a method that belongs to the object called "main".
puts 20  # => 20
puts 20.to_s # => 20
puts '20' # => 20

# Why do these three all print the same thing? Well, the last two should, since 20.to_s is '20'. 
# But what about the first one, the integer 20? For that matter, what does it even mean to write out the integer 20? 
# When you write a 2 and then a 0 on a piece of paper, you are writing down a string, not an integer. 
# The integer 20 is the number of fingers and toes I have; it isn't a 2 followed by a 0.

# # Well, here's the big secret behind our friend, puts: Before puts tries to write out an object, 
# it uses to_s to get the string version of that object. In fact, the s in puts stands for string; 
# puts really means put string.

# # So, when you write puts 20, Ruby actually does this:
# puts 20.to_s


# Methods
# Methods are functions that belong to objects.
# Methods are called with a dot.
# Methods can take arguments.
# Methods can return values.
# Methods can be chained.
# Methods can be redefined.
# Methods can be aliased.
# Methods can be private.
# Methods can be protected.
# Methods can be public.
# Methods can be singleton.
# Methods can be module.

# gets
# gets is a method that belongs to the object called "main".
puts gets # this will get the user input from the keyboard and print it out
# if puts is "put string", gets is "get string"
# it retrieves strings from the user - keyboard input


# gets.chomp
# chomp is a method that belongs to the string class.
# chomp removes the newline character from the end of a string.
puts "Enter your name: "
name = gets.chomp
puts "Hello, #{name}!"



# Control Flow
# <, >, <=, >=, ==, !=, &&, ||, !, if, unless, case, while, until, for, break, next, redo, retry, return, yield

puts "cat" < "dog" # => true
# There's a catch, though: the way computers usually do things, they order capital letters as coming before lowercase letters. 
# (That's how they store the letters in fonts, for example: all the capital letters first, then the lowercase ones.) 
# This means that it will think 'Zoo' comes before 'ant', so if you want to figure out which word would come first in a 
# real dictionary, make sure to use downcase (or upcase or capitalize) on both words before you try to compare them.


# Branching 
# Branching is the ability to execute different code depending on different conditions.

# if statement
# end is the keyword that ends a block of code. It's like the closing curly brace in JS.
if 1 < 2
  puts "Yes, it is!"
end
# => Yes, it is!

# if/else
if 1 > 2
  puts "Yes, it is!"
else
  puts "No, it's not!"
end
# => No, it's not!

# if/elsif/else
if 1 > 2
  puts "Yes, it is!"
elsif 1 < 2
  puts "No, it's not!"
else
  puts "I don't know"
end


# Looping
# Looping is the ability to execute the same code over and over again, possibly with some changes each time.

# while
# while loops will keep executing as long as the condition is true
i = 0
while i < 5
  puts i
  i += 1
end
# => 0
# => 1
# => 2
# => 3
# => 4

# until
# until loops will keep executing as long as the condition is false
i = 0
until i == 5
  puts i
  i += 1
end
# => 0
# => 1
# => 2
# => 3
# => 4

# for
# for loops are used to iterate over a range of numbers
for i in 0..5
  puts i
end
# => 0
# => 1
# => 2
# => 3
# => 4
# => 5

# each
# each is a method that belongs to the range class
(0..5).each do |i|
  puts i
end
# => 0
# => 1
# => 2
# => 3
# => 4
# => 5

# times
# times is a method that belongs to the integer class
5.times do |i|
  puts i
end
# => 0
# => 1
# => 2
# => 3
# => 4

# break
# break is used to break out of a loop
i = 0
while i < 5
  puts i
  i += 1
  break if i == 3
end
# => 0
# => 1
# => 2

# next
# next is used to skip to the next iteration of a loop
i = 0
while i < 5
  i += 1
  next if i == 3
  puts i
end
# => 1
# => 2
# => 4
# => 5

# redo
# redo is used to redo the current iteration of a loop
i = 0
while i < 5
  puts i
  i += 1
  redo if i == 3
end
# => 0
# => 1
# => 2
# => 0
# => 1



# Arrays
# Arrays are ordered, integer-indexed collections of any object.
# Arrays are zero-indexed.
# Arrays can be nested.

# Creating Arrays
# Arrays can be created using the Array class.

# Custom Method

def sayMoo 
    puts 'mooooooo...'
end

sayMoo

# Method with Parameters
def sayMoo numberOfMoos
    puts 'mooooooo...' * numberOfMoos
end
# numberOfMoos is a variable which points to the parameter passed in when the method is called

sayMoo 3
# sayMoo  # <ArgumentError: wrong number of arguments (given 0, expected 1)>


# Return Values
def doubleThis num
    numTimes2 = num * 2
    puts num.to_s + ' doubled is ' + numTimes2.to_s
end
doubleThis 44

def doubleThis num
    numTimes2 = num * 2
    return 'return value is '+ numTimes2.to_s # the "return" keyword is optional
end
returnValue = doubleThis 44
puts returnValue




# Blocks and Procs
# Blocks are chunks of code that can be passed around.
# Blocks can be defined with do/end or with curly braces.
# Procs are the equivalents of "closures" in JavaScript.

doYouLike = Proc.new do |aGoodThing|
    puts 'I *really* like '+aGoodThing+'!'
  end
  
doYouLike.call 'chocolate' # => I *really* like chocolate!
doYouLike.call 'ruby' # => I *really* like ruby!

# Why not just use methods? Well, it's because there are some things you just can't do with methods. 
# In particular, you can't pass methods into other methods (but you can pass procs into methods), 
# and methods can't return other methods (but they can return procs). 
# This is simply because procs are objects; methods aren't.








