##What does puts do?

>'puts' is short for "put string," meaning it prints the output to the terminal on a new line. It also returns nil (which can cause problems for grading programs that are expecting to receive a returned value).

##What is an integer? What is a float?

>An integer is any whole number, positive or negative. A float is any number that is represented with a decimal. So 3 is an integer, but 3.0 is a float.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

>Division works differently with integers and floats because Ruby won't return anything but another integer when an integer is divided by an integer. This is fine when you're doing, say, 4/2 = 2, but 5/2 is a whole other matter. In any situation where you'd need a float answer from dividing two integers, Ruby will return a rounded down integer. So 5/2 to Ruby is not 2.5, but also 2. If you need 2.5, you'll need to use float division. This means phrasing the problem instead as 5.0/2.0. Using floats in your question gives Ruby permission to use floats in its answer.

>Another way to think about it might be to think of integer division as dividing up things that can't be easily turned into fractions. If your restaurant has 13 tables and two servers on a shift, each server can't wait on six and a half tables. Well they *could*, but for practical purposes, two servers each cover 6 (and you're left with 1 whole remaining table to assign to one of them).

##Hours in a year
```
puts 365 * 24
```

##Minutes in a decade
```
puts 10 * 365 * 24 * 60
```

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

>Ruby treats basic math operations normally, almost like a calculator. Things only get strange when you start dealing with integers and floats or problems that mix the two.

##What is the difference between integers and floats?

>The integers are any whole numbers, positive or negative. Integers can't be represented with a decimal point. As soon as you've used a decimal point, a number ceases to be an integer and becomes a float. So 1 is an integer, but 1.0 (even though we probably think of it as the same value) is a float.

##What is the difference between integer and float division?

>Float division is what we do whenever we do division and get a float answer. For Ruby to produce a float answer to a division operation, the numbers involved need to be floats. An integer dividing another integer will always produce a rounded down integer, not a float. So, 5.0/2.0 = 2.5 but 5/2 = 2.

##What are strings? Why and when would you use them?

>Strings are how programming languages handle text that isn't supposed to be interpreted as code. You'd use strings for everything from storing a user's name to even some numbers that wouldn't  have calculations performed on them (like an invoice or membership ID number).

##What are local variables? Why and when would you use them?

>Local variables are variables that are only needed in the scope of a function or block. You would use them in most cases in order to store data that needs to be used within a given program.

##How was this challenge? Did you get a good review of some of the basics?

>The only thing that was a little strange on this challenge was that at first I kept trying to add my solution code under the RSpec code, which produced all sorts of errors. Otherwise the manipulation of numbers with basic mathematical operators is all very standard.

##Exercises

[4.2.1 Defining Variables Code](defining-variables.rb)

[4.2.2 Simple String Methods](simple-string.rb)

[4.2.3 Local Variables and Basic Arithmetical Expressions](basic-math.rb)
