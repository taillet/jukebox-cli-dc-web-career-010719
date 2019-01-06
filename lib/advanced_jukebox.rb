#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each do |song, link|
    puts "#{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
    choice = gets.chomp
    e = my_songs.size
    if my_songs.include?(choice) == false
      puts "Invalid input, please try again"
      choice = gets.chomp
    end
    if my_songs.include?(choice) == true
      filename = my_songs[choice]
      puts "open #{filename}"
    end

end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
      if input == "help"
        help
      elsif input == "list"
        list(my_songs)
      elsif input == "play"
        puts "Please enter a song name:"
        play(my_songs)
      elsif input != "help" || input != "list" || input != "play"
        puts "Please enter a command:"
      end
    puts "Please enter a command:"
    input = gets.chomp
  end
  if input == "exit"
    exit_jukebox
  end
end
