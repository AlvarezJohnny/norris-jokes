require "./chuck"
user = ChuckJokes.new('duck')

if  ARGV[0] == "random"
  user.random
else
  puts "Invalid Input"
end
  if ARGV.length == 2
    user.replace_name(ARGV)
  else
    puts "Invalid Input"
  end
  if ARGV[0] == gets.to_i
    user.get_joke_by_id
  else
    puts "Invalid Input"
  end
  if ARGV[0] == "help"
    user.help
  else
    puts "Invalid Input"
  end



puts ARGV
