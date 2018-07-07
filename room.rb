class Room

  attr_reader :name, :entry_fee, :guests, :songs, :lobby, :money

  def initialize(name, entry_fee, songs, room_size)
    @name = name
    @entry_fee = entry_fee
    @guests = []
    @songs = []
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

  def add_in_song(song)
    puts puts
    p "________CHECK IN SONG________"
    p "There were #{@songs.length} songs..."
    p "Song #{song.song_name} was added"
    @songs << song
    p "Theres now #{@songs.length} songs..."
  end

  def entry_fee(client)
    puts puts
    p "____CUSTOMER CHARGED ENTRY FEE________"
    p "Room costs #{@entry_fee}, #{client.name} has #{client.money}..."

    client.money -= @entry_fee #attr_acc: money
    p "#{client.name} paid #{@entry_fee} and has *#{client.money}* left"

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
  end

  def wohoo_songs(songs, lobby)
    puts puts
    p "__________ROOM SONGS____________"
    room_songs = []
    songs.map { |song| room_songs << song.song_name }
    p room_songs
    p "__CHECK IF GUEST FAV SONG THERE__"
    fav_song_list = []
    lobby.map {|guest| fav_song_list << guest.favourite_song }
    p fav_song_list
    check = room_songs.all? { |room_song| fav_song_list.include?(room_song) }
    puts "WOOHOOO!!!" if check == true
    p check == true
    return check == true
  end

  def noooo_song(song, guest)
    puts puts
    p "__CONFIRM GUEST FAV SONG NOT THERE__"
    p guest.favourite_song != song.song_name
    p "Room song is #{song.song_name} ... Guest favourite song #{guest.favourite_song} not there."
    return guest.favourite_song != song.song_name
  end

end # class end
