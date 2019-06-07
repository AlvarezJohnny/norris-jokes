require 'chuck_norris'

class ChuckJokes
  attr_accessor :name
  def initialize(name)
    self.name = name
  end


  def help
    puts "Enter 'ruby app.rb random' to get a random joke"
    puts "Enter 'ruby app.rb' and a number to get a specific joke"
    puts "Enter 'ruby app.rb' and a first and last name to change the name"
  end

  def get_joke_by_id(id)
    bug_joke = ChuckNorris::JokeFinder.find_joke(id)
    puts bug_joke.joke
    puts "The ID of this joke is #{bug_joke.id}"
  end

  def replace_name(name, sname)
    joke = ChuckNorris::JokeFinder.get_joke(first_name: name, last_name: sname )
    puts joke.joke
    puts "The ID of this joke is #{joke.id}"

  end

  def random
    joke = ChuckNorris::JokeFinder.get_joke
    puts joke.joke
    puts "The ID of this joke is #{joke.id}"
  end

end

# user = ChuckJokes.new('duck')
# user.random
