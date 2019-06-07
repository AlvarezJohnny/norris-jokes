require "./chuck"
user = ChuckJokes.new('duck')

if  ARGV[0] == "random"
  user.random
  elsif ARGV.length == 2
    user.replace_name(ARGV[0], ARGV[1])
  elsif ARGV[0].to_i > 0
    user.get_joke_by_id(ARGV[0].to_i)
else
  user.help
end
