# Create a Playlist from Driver Code

# I worked on this challenge with Bob Dorff.
# I spent 2 hours on this challenge.


# Pseudocode
# 1. Create a class called 'Song' that takes a song name and a band name as arguments.
# 2. Create a playlist class that can take any number of arguments, each of which will be an object initialized as a Song.



# Initial Solution


# class Song
#   attr_reader :song, :band
#   def initialize(song, band)
#     @song = song
#     @band = band
#   end

#   def play
#     puts "Playing: #{@song} by #{@band}"
#     for num in 1..3
#       sleep 1
#       puts "."
#     end
#   end
# end

# class Playlist
#   attr_reader :playlist
#   def initialize(*songs)
#     @playlist = songs

#   end

#   def add(*songs)
#     @playlist << songs
#     @playlist.flatten!
#   end


#   def num_of_tracks
#     return playlist.length
#   end

#   def remove(song)
#     playlist.delete(song)
#   end

#   def includes?(song)
#     playlist.include?(song)
#   end

#   def play_all
#     playlist.each do |song|
#       song.play
#     end
#   end
#   def display
#     playlist.each do |song|
#       puts "#{song.song} by #{song.band}"
#     end
#   end
# end



# Refactored Solution
class Song
  attr_reader :song, :band
  def initialize(song, band)
    @song = song
    @band = band
  end

  def play
    puts "Playing: #{@song} by #{@band}"
    for num in 1..3
      sleep 1
      puts "."
    end
  end
end

class Playlist
  def initialize(*songs)
    @playlist = songs
  end

  def add(*songs)
    @playlist.push(songs).flatten!
  end

  def num_of_tracks
    return @playlist.length
  end

  def remove(song)
    @playlist.delete(song)
  end

  def includes?(song)
    @playlist.include?(song)
  end

  def play_all
    @playlist.each {|song| song.play}
  end

  def display
    @playlist.each { |song| puts "#{song.song} by #{song.band}"}
  end
end


# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.

my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display



# Reflection

# What concepts did you review in this challenge?
#   In this challenge, my pair and I reviewed how to construct classes and class-specific methods. The main element we spent most of our time reviewing was attr_reader. We went from using it in both classes to only using it in Song after taking a lot of time to dig in and see how it actually worked and where we actually needed it, instead of assigning it by default.

# What is still confusing to you about Ruby?
#   I think I'm on pretty firm ground when it comes to using a predetermined Class structure like in this assignment. Where I still feel a little shaky is in being given something to do and having to create a system of classes whole cloth on my own. I'm not sure I would have hit upon having a Song class and a Playlist class right away, I guess I'm saying.

# What are you going to study to get more prepared for Phase 1?
#   I want to look at more code for small projects that use classes and work out the hierarchy of objects and how and why they're put together in the way they are.