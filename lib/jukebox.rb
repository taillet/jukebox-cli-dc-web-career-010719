
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  i = 0
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  choice = 2
  e = songs.size
  if songs.include?(choice) == false || (1..e).include?(choice.to_i) == false
    puts "Invalid input, please try again"
    choice = gets.chomp
  end
  if songs.include?(choice) == true
    puts "Playing #{choice}"
  elsif (1..e).include?(choice.to_i) == true
    num = choice.to_i-1
    puts "Playing #{songs[num]}"
  end


end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
      if input == "help"
        help
      elsif input == "list"
        list(songs)
      elsif input == "play"
        puts "Please enter a song name or number:"
        play(songs)
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
