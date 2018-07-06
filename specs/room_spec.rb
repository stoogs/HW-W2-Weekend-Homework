require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

def setup
                      #name   entry_fee  array   room_size
  @room1 = Room.new("Barrowlands", 20, @songs, 2)
                    #name   wallet favourite_song
  @client1 = Guest.new("Ted", 100, "Hurricane")
                    #artist      song_name    lyrics
  @song1 = Song.new("Bob Dylan", "Hurricane", "waaaaa")
  @song2 = Song.new("Kevin Morby", "Aboard My Train", "Heee")
  @song3 = Song.new("Radiohead", "No Surprises", "plingplong")
end


####################################################
def test_check_in_guest
  p "_____________CHECK IN GUEST________"
  p @song1.artist
  @room1.check_in_guest(@client1)
  check = @room1.guests.length
  assert_equal(1 , check)
end

def test_check_out_guest
  @room1.check_in_guest(@client1)
  @room1.check_out_guest(@guests)
  check = @room1.guests.length
  assert_equal(0 , check)
end

def test_check_in_song
  @room1.check_in_song(@song1)
  check = @room1.songs.length
  assert_equal(3 , check)
end

def test_entry_fee
  @room1.entry_fee(@client1)
  assert_equal(80, 80)
end



end # class end
