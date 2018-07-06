require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')


class RoomTest < MiniTest::Test

def setup
  @room1 = Room.new("Barrowlands", 20, @songs)
  @client1 = Guest.new("Ted", 100, "Hurricane")
  @song1 = Song.new("Bob Dylan", "Hurricane", "waaaaa")
  @song2 = Song.new("Kevin Morby", "Aboard My Train", "Heee")
  @song3 = Song.new("Radiohead", "No Surprises", "plingplong")
end


####################################################
def test_check_in_guest
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

def test_put_songs_in_room
  @room1.check_in_song(@song1)
  check = @room1.songs.length
  assert_equal(3 , check)
end




end # class end
