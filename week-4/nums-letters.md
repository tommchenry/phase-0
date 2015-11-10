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