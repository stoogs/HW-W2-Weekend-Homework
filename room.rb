#require_relative('customer')
class Room

  attr_reader :name, :entry_fee, :guests, :songs, :lobby
  attr_accessor :money, :guests
  def initialize(name, entry_fee, songs, room_size)
    @name = name
    @entry_fee = entry_fee
    @guests = []
    @songs = [@song1, @song2, @song3]
    @room_size = room_size
    @lobby = []
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
    p "Room costs #{@entry_fee}, #{client2.name} only has #{client2.money}..."
    if client2.money >= @entry_fee
      client2.money -= @entry_fee #attr_acc: money
    else
      p "#{client2.name} Denied Entry. Needs *#{@entry_fee - client2.money}* more money"
      p client2.money
      @lobby << client2
      p "#{client2.name} is turfed back into the lobby"
      p @lobby.length
    end
  end

  def room_party_too_big(lobby)
    puts puts
    p "______PARTY TOO BIG_______"
    while lobby.length <= @room_size
      @guests << lobby
    end
    p "Sorry you're party is too big. #{lobby.length} doesn't go into #{@room_size}, come back later"
  end

  def room_fill_to_capacity(lobby)
    puts puts
    p "_______ROOM CAPACITY________"
    p "Room Size is *#{@room_size}* and there are *#{lobby.length}* guests"
    lobby.each do |guest|
      while guests.length < @room_size
        @guests << guest
        lobby.pop
        p "Guest #{guests.length} added "
      end
    end
    puts "______Room now at MAX Capacity Sorry______"
    p "Guests Inside: #{guests.length} Room Capacity: #{@room_size} Turned away : #{lobby.length}"
    lobby.each do |name| turned_away = name.name
      p "#{turned_away} Can't go in, go home #{turned_away}"
    end

    # --------------------------------------------------------------
    #   p "______ROOM CAPACITY_______"
    #   p "Guest size #{@guests.length}  ---"
    #   p  "Space available = #{@room_size}"
    #   while guests.length < @room_size
    #   @guests << @guest1
    #   p "Guest size #{@guests.length}  ---"
    # end
    #   p guests.each {|guest| p guest }
    #   p "Room now at MAX Capacity #{guests.length} / #{@room_size}"
    # end
  end

  # def room_has_guest_fav_song()
  # p "ROOM HAS GUEST FAV SONG?"
  #
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
