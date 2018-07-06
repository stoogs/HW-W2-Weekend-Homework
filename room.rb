#require_relative('customer')
class Room

  attr_reader :name, :entry_fee, :guests, :songs

def initialize(name, entry_fee, songs)
  @name = name
  @entry_fee = entry_fee
  @guests = []
  @songs = [@song1, @song2]

end

def check_in_guest(guest)
  @guests << guest
end

def check_in_song(song)
  p "There Were #{@songs.length} songs..."
  @songs << song
  p "Theres now #{@songs.length} songs..."
end

#
# def check_out_guest
#   ###########
# end
#
# def add_song
#   ###########
# end
end # class end




# test = Empty.new("Harry", 50)
#
# p test.name         # --> "Harry"    ## Reader works only
#   test.name = "Sally"
# p test.name         # --> "Sally"    ## Only accessor works from here on...
#
# def change_name
#   @name = "Joe"
# end
#
# test.change_name
# p test.name         # --> "Joe"
#
#
# end #class end
# test_outside = Empty.new("Outside Man", 33)
# p test_outside.name
#
# test_outside.name = "New Man"
# p test_outside.name
