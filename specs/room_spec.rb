require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

def setup
                      #name   entry_fee  array   room_size
  @room1 = Room.new("Barrowlands", 20, @songs, 3)
  @room2 = Room.new("Albert Hall", 200, @songs, 2)
                    #name   money favourite_song
  @client1 = Guest.new("Ted", 100, "Hurricane")
  @client2 = Guest.new("Kevin", 15, "Brass In Pocket")
  @client3 = Guest.new("Joanna", 100, "No Surprises")
  @client4 = Guest.new("Joanna", 100, "No Surprises")
  @client5 = Guest.new("Joanna", 100, "No Surprises")
                    #artist      song_name    lyrics
  @song1 = Song.new("Bob Dylan", "Hurricane", "waaaaa")
  @song2 = Song.new("Kevin Morby", "Aboard My Train", "Heee")
  @song3 = Song.new("Radiohead", "No Surprises", "plingplong")
  @song4 = Song.new("The Pretenders", "Brass In Pocket", "ah oh ohh ohhhhoohh")
  @lobby = [@client1, @client2,@client3, @client4, @client5]
end


####################################################
def test_check_in_guest
  p "_____________CHECK IN GUEST________"
  @room1.check_in_guest(@client1)
  assert_equal(1 , @room1.guests.length)
end

def test_check_out_guest
  @room1.check_in_guest(@client1)
  @room1.check_out_guest(@guests)
  assert_equal(0 , @room1.guests.length)
end

def test_check_in_song
  @room1.check_in_song(@song1)
  assert_equal(4 , @room1.songs.length)
end

def test_entry_fee
  @room1.entry_fee(@client1)
  assert_equal(80, @client1.money)
end

def test_entry_fee_check
  @room1.entry_fee_check(@client2)
  assert_equal(15, @client2.money)
end

def test_room_party_too_big
  @room2.room_party_too_big(@lobby)
  assert_equal(nil, @length)
end

def test_room_fill_to_capacity
  @room1.room_fill_to_capacity(@lobby)
  assert_equal(3, @room1.guests.length)
end
# def test_room_has_guest_fav_song
#   @room1.room_party_too_big(@lobby)  # put party in the room
#   p room_has_guest_fav_song
# end






end # class end
