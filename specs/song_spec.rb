require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
                          #artist      song_name    lyrics
      @song1 = Song.new( "Bob Dylan", "Hurricane", "waaaaa")
  end

  def test_song_name
    assert_equal("Hurricane", @song1.song_name)
  end



end # class end
