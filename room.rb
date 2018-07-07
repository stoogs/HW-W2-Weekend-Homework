#require_relative('customer')
class Room

  attr_reader :name, :entry_fee, :guests, :songs, :holding_bay
  attr_accessor :money
def initialize(name, entry_fee, songs, room_size)
  @name = name
  @entry_fee = entry_fee
  @guests = []
  @songs = [@song1, @song2, @song3]
  @room_size = room_size
  @holding_bay = []
end



##############################################

def check_in_guest(guest)
  puts puts
  p "_____________CHECK IN GUEST________"
  p "There Were #{@guests.length} guests..."
    @guests << guest
  p "Theres now #{@guests.length} guests..."
end

def check_out_guest(guests)
  puts puts
  p "_____________CHECK OUT GUEST________"
  p "There Were #{@guests.length} guests..."
  @guests.shift
  p "Theres now #{@guests.length} guests..."
end

def check_in_song(song)
  puts puts
  p "________CHECK IN SONG________"
  p "Song #{song.song_name} was added"
  p "There Were #{@songs.length} songs..."
  @songs << song
  p "Theres now #{@songs.length} songs..."
end

def entry_fee(client)
  puts puts
  p "____CUSTOMER CHARGED ENTRY FEE________"
  p "Customers money before entry_fee is 100?"
  p client.money
  client.money -= @entry_fee #attr_acc: money
  p "Customers wallet after entry_fee is 80?"
  p client.money
end

def entry_fee_check(client2)
  puts puts
  p "____IS CUSTOMER 2 SKINT________"
  p "Customers money before entry_fee is 15?"
  p client2.money
if client2.money >= @entry_fee
  client2.money -= @entry_fee #attr_acc: money
else
  p "Customers Denied Entry. Needs #{@entry_fee - client2.money} more money"
  p client2.money
end
end



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
