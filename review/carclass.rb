# Create a Car Class from User Stories


# I worked on this challenge by myself.


# 2. Pseudocode
# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
#   Create a class called car. This class stores properties for a model and color of the car.

# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
#   Define a variable that is named distance

# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
#   Define a variable named speed.
#   Define a way to display the variable named speed.

# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
#   Define a method that will turn the car left.
#   Define a method that will turn the car right.

# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
#   Define a method that will accelerate the speed of the car to some new number provided.
#   Define a method that will decelerate the speed of the car to some new number provided.

# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
#   Define a variable for the total distance travelled. It should start at 0 and gain distance as the car proceeds.

# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
#   Create a method for stopping the car. This method should change the car's speed to 0 and stop all accumulation of distance.

# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
#   Create a method to display the car's most recent actions.


# 3. Initial Solution

class Car
  attr_accessor :model, :color, :distance, :speed, :direction, :actions
  def initialize(model,color)
    @model = model
    @color = color
    @distance = 0
    @speed = 0
    @direction = 0
    @actions = []
  end

  def turn(turn_direction)
    if turn_direction == "left"
      @direction -= 90
      if @direction < 0
        @direction += 360
        @actions << "Car turned left."
      end
    end
    if turn_direction == "right"
      @direction += 90
      if @direction >= 360
        @direction -= 360
        @actions << "Car turned right."
      end
    end
  end

  def drive
    @distance += 1
    @actions << "Car drove 1 block."
  end

  def change_speed(new_speed)
    @speed = new_speed
    @actions << "Car speed changed to #{new_speed}."
  end

  def stop
    change_speed(0)
  end


end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

def assert_value(actual,expected,message)
  puts message
  puts actual == expected
end

assert_value(1,1,"Basic test")
car1 = Car.new("Mercury Cougar", "Tan")
assert_value(car1.model, "Mercury Cougar", "Initializes with correct model name.")
assert_value(car1.color, "Tan", "Initializes with correct color name.")
assert_value(car1.distance, 0, "Initializes with correct initial distance.")
assert_value(car1.speed, 0, "Initializes with correct initial distance.")
car1.turn("left")
assert_value(car1.direction, 270, "Correctly turns left.")
car1.turn("left")
assert_value(car1.direction, 180, "Correctly turns left twice.")
car1.turn("left")
assert_value(car1.direction, 90, "Correctly turns left three times.")
car1.turn("right")
assert_value(car1.direction, 180, "Correctly turns right.")
car1.change_speed(40)
assert_value(car1.speed, 40, "Correctly change speed.")
car1.stop
assert_value(car1.speed, 0, "Correctly stop.")
assert_value(car1.actions[0], "Car turned left.", "Car tracks actions.")
car1.drive
assert_value(car1.distance, 1, "Car drives forward.")

# 5. Reflection