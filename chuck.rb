require "chuck_norris"
require "colorized_string"

class Chuckjokes
  def self.help
    puts "Hello to the worst joke teller of Ruby"
    puts "For a random joke enter 'ruby app.rb random'"
    puts "for an id, enter 'ruby app.rb (enter Number here)'"
    puts "to replace a name enter 'ruby app.rb (fist name, last name)'"
    puts "For anything else, go ask chuck"
  end
  def self.get_joke_by_id(id)
    jokeId = ChuckNorris::JokeFinder.find_joke(id)
    puts "#{jokeId.joke}"
    puts "Da ID of the joke is #{jokeId.id}"
  end
  def self.replace_name(userName1, userName2)
      changeName = ChuckNorris::JokeFinder.get_joke(first_name: userName1, last_name: userName2 )
      puts "#{changeName.joke}"
      puts "ID #{changeName.id}"
  end
  def self.random
    randomJoke = ChuckNorris::JokeFinder.get_joke
    puts "#{randomJoke.joke}"
    puts "ID #{randomJoke.id}"
  end
end
