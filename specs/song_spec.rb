require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
      @song1 = Song.new( "Hurricane", "Bob Dylan", "waaaaa")
  end

  def test_song_name
    assert_equal("Hurricane", @song1.name)
  end



end # class end
