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
    puts bug_joke = ChuckNorris::JokeFinder.find_joke()
    p bug_joke.bug_joke

  end

  def replace_name(name)
    joke = ChuckNorris::JokeFinder.get_joke(first_name: "#{name[0]}", last_name: "#{name[1]}" )
    p joke.joke
  end

  def random
    puts joke = ChuckNorris::JokeFinder.get_joke
    p joke.joke
  end

end

# user = ChuckJokes.new('duck')
# user.random
