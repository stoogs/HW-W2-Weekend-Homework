require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Ted", 100, "Hurricane")
end


def test_guest_name
  assert_equal("Ted", @guest1.name)
end

def test_favourite_song
  assert_equal("Hurricane", @guest1.favourite_song)
end

def test_remove_money # remove 20
  @guest1.remove_money(20)
  assert_equal(80, @guest1.money)
end

end # class end
