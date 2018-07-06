#require_relative('customer')
class Guest

attr_reader :name, :money, :favourite_song

def initialize(name, money, favourite_song)
  @name = name
  @money = money
  @favourite_song = favourite_song
end

def remove_money(money)
  @money -= money
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
